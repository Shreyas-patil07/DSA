#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="$(mktemp -d "${TMPDIR:-/tmp}/dsa-env-check.XXXXXX")"

if ! command -v g++ >/dev/null 2>&1; then
    echo "ERROR: g++ was not found. Install GCC/MinGW or run the manual MSVC workflow." >&2
    exit 1
fi

echo "== Compiler =="
g++ --version | head -n 1
FLAGS=(-std=c++17 -Wall -Wextra -pedantic -g)

check_program() {
    local source="$1"
    local expected="$2"
    local executable="$BUILD_DIR/${source%.cpp}"

    echo "== Build: $source =="
    g++ "${FLAGS[@]}" "$SCRIPT_DIR/$source" -o "$executable"
    local actual
    actual="$("$executable")"

    if [[ "$actual" != "$expected" ]]; then
        printf 'ERROR: unexpected output from %s\nExpected:\n%s\nActual:\n%s\n' "$source" "$expected" "$actual" >&2
        exit 1
    fi
    printf '%s\n' "$actual"
}

check_program "hello.cpp" "C++17 environment is working."
check_program "exercise.cpp" "Value: 42"
check_program "debugger_walkthrough.cpp" $'Original price: 1200\nDiscount: 15%\nFinal price: 1020'

echo "== Separate compilation and linking =="
g++ "${FLAGS[@]}" -c "$SCRIPT_DIR/linking-demo/greeter.cpp" -o "$BUILD_DIR/greeter.o"
g++ "${FLAGS[@]}" -c "$SCRIPT_DIR/linking-demo/main.cpp" -o "$BUILD_DIR/main.o"
g++ "$BUILD_DIR/main.o" "$BUILD_DIR/greeter.o" -o "$BUILD_DIR/linking_demo"

linked_output="$("$BUILD_DIR/linking_demo")"
if [[ "$linked_output" != "Hello, DSA learner!" ]]; then
    printf 'ERROR: unexpected linking-demo output: %s\n' "$linked_output" >&2
    exit 1
fi
printf '%s\n' "$linked_output"

if command -v gdb >/dev/null 2>&1; then
    echo "gdb found: $(gdb --version | head -n 1)"
elif command -v lldb >/dev/null 2>&1; then
    echo "lldb found: $(lldb --version | head -n 1)"
else
    echo "WARNING: neither gdb nor lldb was found on PATH."
fi

echo
echo "PASS: compiler, C++17, execution, and separate-linking checks passed."
echo "MANUAL REQUIRED: set a breakpoint in debugger_walkthrough.cpp and inspect variables/call stack."
echo "Build artifacts were left in: $BUILD_DIR"
