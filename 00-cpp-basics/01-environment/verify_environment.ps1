Set-StrictMode -Version Latest
$scriptDirectory = $PSScriptRoot
$compilerCommand = Get-Command g++ -ErrorAction SilentlyContinue
if (-not $compilerCommand) { throw 'g++ was not found on PATH. Install MinGW-w64/GCC, or follow the manual workflow for MSVC.' }
$script:CompilerPath = $compilerCommand.Source
$buildDirectory = Join-Path ([System.IO.Path]::GetTempPath()) ('dsa-env-check-' + [guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $buildDirectory | Out-Null
function Invoke-Compiler { param([string[]]$CompilerArguments); & $script:CompilerPath @CompilerArguments; if ($LASTEXITCODE -ne 0) { throw "Compilation failed with exit code $LASTEXITCODE." } }
function Test-ProgramOutput {
  param([string]$SourceFile, [string]$ExpectedOutput)
  $sourcePath = Join-Path $scriptDirectory $SourceFile
  $exe = Join-Path $buildDirectory (([System.IO.Path]::GetFileNameWithoutExtension($SourceFile)) + '.exe')
  Write-Host "== Build and run: $SourceFile =="
  Invoke-Compiler -CompilerArguments @('-std=c++17','-Wall','-Wextra','-pedantic','-g',$sourcePath,'-o',$exe)
  $lines = & $exe; $code = $LASTEXITCODE
  if ($code -ne 0) { throw "$SourceFile exited with code $code." }
  $actual = [string]::Join([Environment]::NewLine,[string[]]$lines).TrimEnd()
  if ($actual -cne $ExpectedOutput) { throw "Unexpected output from $SourceFile. Expected: $ExpectedOutput. Actual: $actual" }
  Write-Host $actual
}
Write-Host '== Compiler ==' 
$version = & $script:CompilerPath --version
if ($LASTEXITCODE -ne 0) { throw 'Unable to query compiler version.' }
Write-Host ($version | Select-Object -First 1)
Test-ProgramOutput 'hello.cpp' 'C++17 environment is working.'
Test-ProgramOutput 'exercise.cpp' 'Value: 42'
$nl = [Environment]::NewLine
Test-ProgramOutput 'debugger_walkthrough.cpp' ('Original price: 1200' + $nl + 'Discount: 15%' + $nl + 'Final price: 1020')
Write-Host '== Separate compilation and linking ==' 
$link = Join-Path $scriptDirectory 'linking-demo'
$greeter = Join-Path $buildDirectory 'greeter.o'; $main = Join-Path $buildDirectory 'main.o'
$linkedExe = Join-Path $buildDirectory 'linking-demo.exe'
Invoke-Compiler @('-std=c++17','-Wall','-Wextra','-pedantic','-g','-c',(Join-Path $link 'greeter.cpp'),'-o',$greeter)
Invoke-Compiler @('-std=c++17','-Wall','-Wextra','-pedantic','-g','-c',(Join-Path $link 'main.cpp'),'-o',$main)
Invoke-Compiler @($main,$greeter,'-o',$linkedExe)
$linkedLines = & $linkedExe; $linkedCode = $LASTEXITCODE
if ($linkedCode -ne 0) { throw "Linked demo exited with code $linkedCode." }
$linkedOutput = [string]::Join([Environment]::NewLine,[string[]]$linkedLines).TrimEnd()
if ($linkedOutput -cne 'Hello, DSA learner!') { throw "Unexpected linking-demo output: $linkedOutput" }
Write-Host $linkedOutput
$gdb = Get-Command gdb -ErrorAction SilentlyContinue
if ($gdb) { $gv = & $gdb.Source --version; if ($LASTEXITCODE -eq 0) { Write-Host ('Debugger available: ' + ($gv | Select-Object -First 1)) } } else { Write-Warning 'GDB not found on PATH; use an installed IDE debugger or install GDB.' }
Write-Host 'PASS: compiler, C++17 execution, and separate-linking checks passed.'
Write-Host 'MANUAL REQUIRED: hit a debugger breakpoint and inspect variables and the call stack.'
Write-Host ('Build artifacts are in: ' + $buildDirectory)
Write-Host 'See DEBUGGER_PRACTICE.md for the debugger walkthrough.'