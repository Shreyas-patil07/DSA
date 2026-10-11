# Problem Tracker

Use this file to track **mastery**, not activity.

## Topic Template

### Topic:
- Concept understood: [ ]
- Implemented from scratch: [ ]
- Complexity known: [ ]
- Edge cases tested: [ ]
- Easy problems: 0 / 5
- Medium problems: 0 / 5
- Hard problems: 0 / 2
- Re-solved without notes: [ ]
- Can explain from memory: [ ]

## Current Queue

### Phase 0.1 — Environment verification
- [ ] Confirm compiler version
- [ ] Compile and run the C++17 hello program
- [ ] Inspect compiler warnings
- [ ] Compile multiple translation units to object files
- [ ] Link object files into an executable
- [ ] Set and hit a debugger breakpoint
- [ ] Inspect variables and call stack in the debugger

### Phase 0 — C++ Basics
- [ ] Hello World
- [ ] Input / Output
- [ ] Variables + Types
- [ ] Operators
- [ ] Conditions
- [ ] Loops
- [ ] Functions
- [ ] Arrays
- [ ] Strings
- [ ] References
- [ ] Pointers
- [ ] Structs / Classes
- [ ] STL vector
- [ ] STL pair
- [ ] Iterators
- [ ] Big-O basics

### Phase 1 — Complexity + Math
- [ ] Loop complexity
- [ ] Nested-loop complexity
- [ ] Space complexity
- [ ] GCD / LCM
- [ ] Prime checking
- [ ] Sieve
- [ ] Fast exponentiation

## Daily Progress

### 2026-10-05 — Phase 0.1: C++ Environment
- Added the environment setup guide, `hello.cpp`, and `exercise.cpp`.
- Local compiler verification: **pending user execution**.
- Roadmap completion: **not marked complete**.

### 2026-10-07 — Phase 0.1: Build workflow
- Added build-pipeline and debugger workflow notes.
- Local compiler/debugger verification: **pending user execution**.
- Roadmap completion: **not marked complete**.

### 2026-10-08 — Phase 0.1: Debugger practice
- Added `debugger_walkthrough.cpp` and `DEBUGGER_PRACTICE.md`.
- Covered breakpoints, stepping, variable inspection, call stack, complexity, edge cases, and practice tasks.
- Local debugger verification: **pending user execution**.
- Roadmap completion: **not marked complete**.

### 2026-10-09 — Phase 0.1: Separate compilation and linking
- Added `linking-demo/greeter.hpp`, `greeter.cpp`, and `main.cpp` to demonstrate a declaration, definition, and caller.
- Added `linking-demo/README.md` with separate object compilation, linking, expected output, compiler-vs-linker errors, complexity, edge cases, and practice tasks.
- Verified the demo with GCC 14.2.0 in a Linux environment; output: `Hello, DSA learner!`.
- This does not verify the learner's local machine or debugger.
- Local Phase 0.1 verification: **still pending**.
- Roadmap checkboxes: **left unchecked**.

### 2026-10-10 — Phase 0.1: Automated environment smoke check
- Added `00-cpp-basics/01-environment/verify_environment.sh`.
- The script checks GCC availability/version, compiles and runs the hello, exercise, and debugger walkthrough programs with C++17 and warnings, and separately compiles/links/runs the greeting demo.
- It reports debugger availability but explicitly requires a manual breakpoint/variable/call-stack check.
- Script execution on the learner's machine: **pending**.
- Phase 0.1 completion: **not marked complete**; no roadmap checkboxes changed.

### 2026-10-11 — Phase 0.1: Repeatable CI and debugger verification
- Added a GitHub Actions workflow to compile and execute the existing C++17 environment examples on pushes, pull requests, and manual dispatch.
- The initial workflow run succeeded: [run #1](https://github.com/Shreyas-patil07/DSA/actions/runs/38132106531).
- Strengthened CI to exercise a GDB breakpoint, inspect function arguments, and capture the call stack rather than only checking that GDB is installed.
- The updated workflow passed: [run #2](https://github.com/Shreyas-patil07/DSA/actions/runs/38132264226). The GDB breakpoint, variable checks, backtrace, C++17 examples, and separate-linking steps succeeded.
- Added copy-paste GDB commands and expected values to `DEBUGGER_PRACTICE.md`.
- CI still cannot prove the learner's local debugger works; local verification remains pending.
- Roadmap checkboxes remain unchecked.

### 2026-10-11 — Phase 0.1: Native Windows verification script
- Added 00-cpp-basics/01-environment/verify_environment.ps1 for Windows PowerShell users with GCC/MinGW on PATH.
- It checks the compiler version, builds and runs the three C++17 examples, verifies exact output, and separately compiles and links the greeting demo.
- Updated the environment README with the Windows command and MSVC caveat.
- The PowerShell script has not been executed on the learner's Windows machine; do not treat it as locally verified.
- Local debugger verification remains pending; roadmap checkboxes remain unchecked.

## Re-Solve Queue

Problems previously failed or solved with help.

| Problem | Topic | First Attempt | Re-solve | Result |
|---|---|---|---|---|
| | | | | |

## Mistake Log

| Date | Topic | Mistake | Root Cause | Fix |
|---|---|---|---|---|
| | | | | |

## Rule

A problem only counts as solved when you can reproduce the solution later without copying it.
