#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="$(mktemp -d "${TMPDIR:-/tmp}/dsa-linker-failure.XXXXXX")"
trap 'rm -rf "$BUILD_DIR"' EXIT

if ! command -v g++ >/dev/null 2>&1; then
    echo "ERROR: g++ is required for this exercise." >&2
    exit 1
fi

FLAGS=(-std=c++17 -Wall -Wextra -pedantic -g)

echo "== Compile main.cpp into an object file =="
g++ "${FLAGS[@]}" -c "$SCRIPT_DIR/main.cpp" -o "$BUILD_DIR/main.o"

echo "== Attempt to link without greeter.o (failure is expected) =="
if g++ "$BUILD_DIR/main.o" -o "$BUILD_DIR/incomplete_program" 2>"$BUILD_DIR/linker.log"; then
    echo "ERROR: linking unexpectedly succeeded; the exercise did not trigger the expected failure." >&2
    exit 1
fi

if ! grep -Eqi 'makeGreeting|undefined reference|unresolved external|unresolved symbol' "$BUILD_DIR/linker.log"; then
    echo "ERROR: linking failed, but not for the expected missing-symbol reason." >&2
    cat "$BUILD_DIR/linker.log" >&2
    exit 1
fi

echo "PASS: compilation succeeded, and linking failed because makeGreeting has no linked definition."
echo
echo "Compiler/linker diagnostic:"
cat "$BUILD_DIR/linker.log"
