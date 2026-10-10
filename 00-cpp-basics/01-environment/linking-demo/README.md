# Multi-File Build and Linking Practice

## Goal

Learn how declarations, definitions, object files, and linking fit together.

## Files

- `greeter.hpp` declares `makeGreeting`.
- `greeter.cpp` defines `makeGreeting`.
- `main.cpp` calls it.

## Build each source file separately

Run from the repository root:

```bash
g++ -std=c++17 -Wall -Wextra -pedantic -g -c 00-cpp-basics/01-environment/linking-demo/greeter.cpp -o greeter.o
g++ -std=c++17 -Wall -Wextra -pedantic -g -c 00-cpp-basics/01-environment/linking-demo/main.cpp -o main.o
```

The `-c` flag produces an object file without linking an executable.

## Link the object files

```bash
g++ main.o greeter.o -o linking_demo
```

Run on Linux/macOS with `./linking_demo`, or on Windows PowerShell with `./linking_demo.exe`.

Expected output:

```text
Hello, DSA learner!
```

## One-command build

```bash
g++ -std=c++17 -Wall -Wextra -pedantic -g 00-cpp-basics/01-environment/linking-demo/main.cpp 00-cpp-basics/01-environment/linking-demo/greeter.cpp -o linking_demo
```

## Compile error vs linker error

- A **compile error** means a translation unit could not be compiled.
- A **linker error** means compilation produced object files, but a required definition could not be resolved. For example, linking `main.o` without `greeter.o` should fail with an unresolved-symbol or undefined-reference message.
- A successful build does not guarantee correct runtime behavior.

A header provides declarations; the `.cpp` file contains the function definition. Including a header does not automatically compile its implementation file.

## Complexity

For a name of length `n`, constructing the greeting takes **O(n) time** and **O(n) auxiliary storage** for the returned string.

## Edge cases

Change the name in `main.cpp` and test:

- Empty string: `Hello, !`
- A name containing spaces
- A much longer name

## Practice tasks

- [ ] Compile both source files separately with `-c`.
- [ ] Confirm both object files are created.
- [ ] Link both object files and run the program.
- [ ] Build with the one-command build.
- [ ] Link with only `main.o` and explain the linker error.
- [ ] Compile only `main.cpp` with `-c` and explain why that can succeed even though the final program needs `greeter.cpp`.
- [ ] Test an empty name and a name containing spaces.
- [ ] Explain the difference between a compile error and a linker error.

## Verification status

This demo was compiled and run using GCC 14.2.0 in a Linux environment. Your local compiler and debugger still need separate verification; Phase 0.1 must remain unchecked until that is done.
