# DSA — C++ to DSA Mastery

A structured, from-zero DSA curriculum in **C++**, designed to progress from programming fundamentals to interview-level and competitive-programming-level algorithms.

> Goal: **understand → implement → analyze → solve → revise**.  
> Do not skip fundamentals just because a topic looks easy.

## Curriculum

| Phase | Focus | Status |
|---|---|---|
| 0 | C++ setup, syntax and programming fundamentals | ⬜ |
| 1 | Mathematical foundations + complexity | ⬜ |
| 2 | Arrays, strings and basic problem-solving patterns | ⬜ |
| 3 | Searching and sorting | ⬜ |
| 4 | Pointers, references, linked lists | ⬜ |
| 5 | Stacks, queues, deques and hashing | ⬜ |
| 6 | Recursion and backtracking | ⬜ |
| 7 | Trees, BST, heaps and priority queues | ⬜ |
| 8 | Tries and advanced tree techniques | ⬜ |
| 9 | Greedy algorithms | ⬜ |
| 10 | Divide & conquer and advanced searching | ⬜ |
| 11 | Graphs | ⬜ |
| 12 | Dynamic programming | ⬜ |
| 13 | Bit manipulation | ⬜ |
| 14 | Advanced data structures and range queries | ⬜ |
| 15 | Advanced graph algorithms | ⬜ |
| 16 | Problem-solving patterns + interview preparation | ⬜ |
| 17 | Competitive programming extensions | ⬜ |

See **[ROADMAP.md](ROADMAP.md)** for the complete ordered syllabus.

---

## Repository Structure

```text
DSA/
├── README.md
├── ROADMAP.md
├── PROBLEM_TRACKER.md
│
├── 00-cpp-basics/
│   ├── 01-syntax/
│   ├── 02-control-flow/
│   ├── 03-functions/
│   ├── 04-arrays-strings/
│   ├── 05-pointers-references/
│   ├── 06-oop/
│   └── 07-stl/
│
├── 01-complexity-math/
├── 02-arrays-strings/
├── 03-searching-sorting/
├── 04-linked-lists/
├── 05-stack-queue/
├── 06-hashing/
├── 07-recursion-backtracking/
├── 08-trees/
├── 09-heaps-priority-queues/
├── 10-trie/
├── 11-greedy/
├── 12-divide-conquer/
├── 13-graphs/
├── 14-dynamic-programming/
├── 15-bit-manipulation/
├── 16-advanced-data-structures/
├── 17-advanced-graphs/
└── 18-interview-patterns/
```

The folders are intentionally separated by concept. Each implementation should eventually contain:

1. Concept notes
2. Clean C++ implementation
3. Complexity analysis
4. Edge cases
5. Practice problems
6. Mistakes / lessons learned

---

## C++ Standard

Use **C++17** unless a problem specifically requires another standard.

Recommended compile command:

```bash
g++ -std=c++17 -O2 -Wall -Wextra -pedantic solution.cpp -o solution
./solution
```

---

## Study Rules

- Learn the concept before memorizing the code.
- Implement important data structures from scratch before relying on STL.
- For every algorithm, write **time and space complexity**.
- Dry-run every non-trivial solution on paper.
- Maintain edge-case tests.
- Re-solve difficult problems without looking at the previous solution.
- Do not count a problem as mastered because you watched its solution.
- Prefer **pattern recognition + reasoning** over blind problem grinding.

### Mastery threshold

A topic is considered **mastered** only when you can:

- explain it without notes,
- implement it from scratch,
- analyze complexity,
- identify when it should be used,
- solve unseen medium problems using it,
- recognize common failure cases.

---

## Problem Difficulty Progression

```text
Easy → Easy/Medium → Medium → Medium/Hard → Hard
```

Do not jump to Hard problems while the corresponding fundamentals are weak.

---

## Core DSA Targets

By the end, this repository should contain working implementations of:

- Dynamic arrays / vectors
- Singly and doubly linked lists
- Stack and queue
- Circular queue
- Hash table concepts
- Binary tree
- BST
- Heap / priority queue
- Trie
- Disjoint Set Union (Union-Find)
- Fenwick Tree
- Segment Tree
- Graph representations
- BFS / DFS
- Topological sort
- Shortest paths
- Minimum spanning tree
- Strongly connected components
- Lowest common ancestor
- Common dynamic-programming patterns
- Core greedy patterns
- Core backtracking patterns
- Bit manipulation techniques

---

## Current Starting Point

**Phase 0 — C++ Basics**

Start here. Do not skip directly to LeetCode.

First targets:

- Program structure
- `main()`
- Variables and data types
- Input / output
- Operators
- Conditions
- Loops
- Functions
- Arrays
- Strings
- References and pointers
- Structs / classes
- STL basics
- Big-O notation

The first objective is simple: become comfortable enough with C++ that **syntax stops being the bottleneck**.

---

## Progress

Update the checkboxes in [ROADMAP.md](ROADMAP.md) as topics are completed.

**Rule:** mark a topic ✅ only after implementation + practice, not after reading.
