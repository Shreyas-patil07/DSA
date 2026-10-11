# 01 — C++ Development Environment

## Objective

Set up a reliable C++17 development environment and understand the compile → link → run cycle.

## Required tools

Choose one compiler:

- GCC / MinGW
- Clang
- MSVC

Recommended for this repository: **GCC with C++17**.

An IDE/editor is optional. VS Code is convenient, but the compiler and terminal workflow matter more.

## Verify the compiler

### GCC / MinGW

```bash
g++ --version
```

Then compile:

```bash
g++ -std=c++17 -Wall -Wextra -pedantic hello.cpp -o hello
```

Run:

**Linux/macOS**
```bash
./hello
```

**Windows**
```powershell
.\hello.exe
```

### Windows PowerShell — automated environment checks

If GCC/MinGW is installed and g++ is on PATH, run this from the repository root:

    .\00-cpp-basics\01-environment\verify_environment.ps1

The script checks the compiler version, builds and runs the three C++17 examples with warnings and debug symbols, then separately compiles and links the greeting demo. It checks exact output and fails on compilation errors or unexpected results. Build artifacts are left in the temporary directory printed at the end.

This script targets GCC/MinGW. If you use MSVC, use Visual Studio Developer PowerShell and the cl compiler instead; GCC flags are not interchangeable with MSVC flags.

## Debugging

Learn these basic debugger actions:

1. Set a breakpoint.
2. Start the program under the debugger.
3. Inspect variables.
4. Step over a line.
5. Step into a function.
6. Continue execution.
7. Inspect the call stack.

Do not treat an IDE's Run button as a substitute for understanding compilation.

## C++17

This repository uses C++17 unless a later standard is explicitly required.

Useful flags:

```text
-std=c++17   select language standard
-Wall        common warnings
-Wextra      additional warnings
-pedantic    stricter standard diagnostics
```

For competitive-programming-style builds, `-O2` is commonly used after correctness is established.

## Daily exercise

1. Compile `hello.cpp` from the terminal.
2. Run it.
3. Set a breakpoint on the output line.
4. Inspect execution in the debugger.
5. Recompile after changing the output.
6. Intentionally introduce one harmless warning and inspect the compiler output.

## Completion evidence

Do **not** mark this module complete until you have personally verified:

- [ ] Compiler installed
- [ ] C++17 compilation works
- [ ] Terminal execution works
- [ ] Debugger breakpoint works

This repository cannot verify your local machine, so these checkboxes require your confirmation.
