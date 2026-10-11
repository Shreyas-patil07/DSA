# Debugger Practice — Breakpoints and Stepping

## Goal

Practice inspecting a running C++ program with a debugger. Reading the checklist is not proof that the debugger works; compile and run this program locally.

## Build

From the repository root:

```bash
g++ -std=c++17 -Wall -Wextra -pedantic -g 00-cpp-basics/01-environment/debugger_walkthrough.cpp -o debugger_walkthrough
```

Run it from the terminal:

**Linux / Ubuntu / WSL**
```bash
./debugger_walkthrough
```

**Windows PowerShell with MinGW**
```powershell
.\debugger_walkthrough.exe
```

## Command-line debugger walkthrough (GDB)

Use this on Ubuntu/WSL or a GCC/MinGW shell where `gdb` is installed and on `PATH`.

Launch GDB:

```bash
gdb ./debugger_walkthrough
```

On Windows MinGW, the executable may be named `debugger_walkthrough.exe`; use that filename in the command.

Enter these commands one at a time at the `(gdb)` prompt:

```text
set pagination off
break calculateDiscount
run
print price
print discountPercent
backtrace
next
print discount
finish
continue
quit
```

What success looks like:
- GDB reports that it hit the `calculateDiscount` breakpoint.
- `price` is `1200` and `discountPercent` is `15`.
- `backtrace` shows `calculateDiscount` called from `main`.
- After `next`, `discount` is `180`.
- The program finishes and prints the final price as `1020`.

If GDB is unavailable, install it for your environment or use your IDE's debugger. For Visual Studio/MSVC, use the Visual Studio debugger rather than these GDB-specific commands.

## Debugger tasks

1. Set a breakpoint on the call to `calculateDiscount` in `main`.
2. Start the program in debug mode.
3. Inspect `itemPrice` and `discountPercent`.
4. Step into `calculateDiscount`.
5. Inspect `price` and `discountPercent` in the function.
6. Step over the line that calculates `discount`; inspect its value.
7. Step over the line that calculates `finalPrice`.
8. Step out of the function and inspect `finalPrice` in `main`.
9. Inspect the call stack while execution is inside `calculateDiscount`.
10. Change the inputs in source code and repeat.

## Expected output

```text
Original price: 1200
Discount: 15%
Final price: 1020
```

## Complexity

The example performs a fixed number of arithmetic operations: **O(1) time and O(1) auxiliary space**.

## Edge cases to inspect

Change the constants and rerun:

- Price is `0`.
- Discount is `0` percent.
- Discount is `100` percent.
- Price is `99` and discount is `10` percent: integer division truncates the discount to `9`.

The function is intentionally minimal and does not validate negative prices or percentages outside `[0, 100]`. Treat validation as an optional extension, not as behavior the current code already guarantees.

## Practice tasks

- [ ] Build with `-g` and launch the debugger.
- [ ] Set and hit a breakpoint.
- [ ] Step into and out of a function.
- [ ] Inspect local variables and the call stack.
- [ ] Explain why the 99-at-10-percent case produces a discount of 9.
- [ ] Add input validation and test invalid values.

## Completion rule

Only confirm this part of Phase 0.1 after you personally complete the debugger tasks on your machine. Repository files and CI results do not verify your local toolchain.
