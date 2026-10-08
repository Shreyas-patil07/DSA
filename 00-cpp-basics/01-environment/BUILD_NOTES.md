# Build and Debug Notes

## Build pipeline

source.cpp → preprocessing → compilation → object file → linking → executable

## Recommended learning build

Use C++17 and enable compiler warnings while learning.

- C++17 standard
- Wall warnings
- Wextra warnings
- pedantic diagnostics
- debug symbols when using a debugger

## Debugging checklist

- Set a breakpoint.
- Start under the debugger.
- Inspect a variable.
- Step over a statement.
- Continue execution.
- Inspect the call stack.

## Practice

1. Compile and run hello.cpp from a terminal.
2. Compile exercise.cpp with warnings enabled.
3. Change the value in exercise.cpp and rebuild.
4. Debug exercise.cpp and inspect the value variable.
5. Build an object file and link it into an executable.

## Common traps

- Running a stale executable.
- Ignoring compiler warnings.
- Forgetting debug information when debugging.
- Confusing compilation failures with linker failures.
- Assuming successful compilation means correct program behavior.

## Completion requirement

Local verification is required before Phase 0.1 is marked complete. The repository cannot verify the learner's machine.