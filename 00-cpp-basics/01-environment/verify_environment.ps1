Set-StrictMode -Version Latest

$scriptDirectory = $PSScriptRoot
$compilerCommand = Get-Command g++ -ErrorAction SilentlyContinue
if (-not $compilerCommand) { throw 'g++ was not found on PATH. Install MinGW-w64/GCC, or follow the manual workflow for MSVC.' }
$script:CompilerPath = $compilerCommand.Source
$buildDirectory = Join-Path ([System.IO.Path]::GetTempPath()) ('dsa-env-check-' + [guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $buildDirectory | Out-Null

function Invoke-Compiler {
    param([string[]]$CompilerArguments)
    & $script:CompilerPath @CompilerArguments
    if ($LASTEXITCODE -ne 0) { throw "Compilation failed with exit code $LASTEXITCODE." }
}

function Test-ProgramOutput {
    param([string]$SourceFile, [string]$ExpectedOutput)
    $sourcePath = Join-Path $scriptDirectory $SourceFile
    $executablePath = Join-Path $buildDirectory (([System.IO.Path]::GetFileNameWithoutExtension($SourceFile)) + '.exe')
    Write-Host "== Build and run: $SourceFile =="
    Invoke-Compiler -CompilerArguments @('-std=c++17', '-Wall', '-Wextra', '-pedantic', '-g', $sourcePath, '-o', $executablePath)
    $actualLines = & $executablePath
    $exitCode = $LASTEXITCODE
    if ($exitCode -ne 0) { throw "$SourceFile exited with code $exitCode." }
    $actualOutput = [string]::Join([Environment]::NewLine, [string[]]$actualLines).TrimEnd()
    if ($actualOutput -cne $ExpectedOutput) { throw "Unexpected output from $SourceFile. Expected: $ExpectedOutput. Actual: $actualOutput" }
    Write-Host $actualOutput
}

Write-Host '== Compiler ==' 
$versionOutput = & $script:CompilerPath --version
if ($LASTEXITCODE -ne 0) { throw 'Unable to query the compiler version.' }
Write-Host ($versionOutput | Select-Object -First 1)
Test-ProgramOutput -SourceFile 'hello.cpp' -ExpectedOutput 'C++17 environment is working.'
Test-ProgramOutput -SourceFile 'exercise.cpp' -ExpectedOutput 'Value: 42'
$nl = [Environment]::NewLine
$debuggerExpected = 'Original price: 1200' + $nl + 'Discount: 15%' + $nl + 'Final price: 1020'
Test-ProgramOutput -SourceFile 'debugger_walkthrough.cpp' -ExpectedOutput $debuggerExpected

Write-Host '== Separate compilation and linking ==' 
$linkingDirectory = Join-Path $scriptDirectory 'linking-demo'
$greeterObject = Join-Path $buildDirectory 'greeter.o'
$mainObject = Join-Path $buildDirectory 'main.o'
$linkedExecutable = Join-Path $buildDirectory 'linking-demo.exe'
Invoke-Compiler -CompilerArguments @('-std=c++17', '-Wall', '-Wextra', '-pedantic', '-g', '-c', (Join-Path $linkingDirectory 'greeter.cpp'), '-o', $greeterObject)
Invoke-Compiler -CompilerArguments @('-std=c++17', '-Wall', '-Wextra', '-pedantic', '-g', '-c', (Join-Path $linkingDirectory 'main.cpp'), '-o', $mainObject)
Invoke-Compiler -CompilerArguments @($mainObject, $greeterObject, '-o', $linkedExecutable)
$linkedLines = & $linkedExecutable
if ($LASTEXITCODE -ne 0) { throw "The linked demo exited with code $LASTEXITCODE." }
$linkedOutput = [string]::Join([Environment]::NewLine, [string[]]$linkedLines).TrimEnd()
if ($linkedOutput -cne 'Hello, DSA learner!') { throw "Unexpected linking-demo output: $linkedOutput" }
Write-Host $linkedOutput
$gdbCommand = Get-Command gdb -ErrorAction SilentlyContinue
if ($gdbCommand) {
    $gdbVersion = & $gdbCommand.Source --version
    if ($LASTEXITCODE -eq 0) { Write-Host ('Debugger available: ' + ($gdbVersion | Select-Object -First 1)) }
} else { Write-Warning 'GDB was not found on PATH. Use an installed IDE debugger or install GDB.' }
Write-Host 'PASS: compiler, C++17 execution, and separate-linking checks passed.'
Write-Host 'MANUAL REQUIRED: hit a debugger breakpoint and inspect variables and the call stack.'
Write-Host 'Build artifacts are in: ' $buildDirectory
Write-Host 'See DEBUGGER_PRACTICE.md for the debugger walkthrough.'
