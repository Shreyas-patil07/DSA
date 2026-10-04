# Complete Roadmap — C++ → DSA Mastery

This is the master syllabus. Follow it in order unless a problem specifically requires a prerequisite.

## Phase 0 — C++ Fundamentals

### 0.1 Environment
- [ ] Install compiler (GCC/MinGW/MSVC)
- [ ] VS Code / IDE setup
- [ ] Compile and run from terminal
- [ ] C++17 standard
- [ ] Basic debugging with breakpoints

### 0.2 Program structure
- [ ] `#include`
- [ ] `main()`
- [ ] Statements
- [ ] Comments
- [ ] Namespaces
- [ ] Header/source separation
- [ ] Compilation vs linking

### 0.3 Variables and data types
- [ ] `int`, `long long`, `float`, `double`
- [ ] `char`, `bool`
- [ ] `string`
- [ ] Signed vs unsigned
- [ ] Type conversion / casting
- [ ] Constants
- [ ] Overflow and integer limits
- [ ] `sizeof`

### 0.4 Input/output
- [ ] `cin`, `cout`
- [ ] `getline`
- [ ] Formatting
- [ ] Fast I/O
- [ ] Multiple test cases

### 0.5 Operators
- [ ] Arithmetic
- [ ] Relational
- [ ] Logical
- [ ] Assignment
- [ ] Increment/decrement
- [ ] Bitwise operators
- [ ] Ternary operator
- [ ] Operator precedence

### 0.6 Control flow
- [ ] `if / else`
- [ ] Nested conditions
- [ ] `switch`
- [ ] `for`
- [ ] `while`
- [ ] `do while`
- [ ] `break`, `continue`

### 0.7 Functions
- [ ] Function declaration/definition
- [ ] Parameters and return values
- [ ] Pass by value
- [ ] Pass by reference
- [ ] `const` reference
- [ ] Scope
- [ ] Local/global/static variables
- [ ] Function overloading
- [ ] Default arguments
- [ ] Lambda basics

### 0.8 Arrays and strings
- [ ] C-style arrays
- [ ] 2D arrays
- [ ] Character arrays
- [ ] `std::string`
- [ ] Common string operations
- [ ] Traversal and mutation
- [ ] Frequency arrays

### 0.9 Pointers and memory
- [ ] Addresses
- [ ] Dereference operator
- [ ] Null pointers
- [ ] Pointer arithmetic
- [ ] Arrays and pointers
- [ ] Dynamic memory
- [ ] Stack vs heap
- [ ] References vs pointers
- [ ] Const pointer variations
- [ ] Memory leaks / dangling pointers
- [ ] RAII concept

### 0.10 User-defined types
- [ ] `struct`
- [ ] `class`
- [ ] Constructors
- [ ] Member functions
- [ ] Access modifiers
- [ ] `this`
- [ ] Encapsulation
- [ ] Basic inheritance
- [ ] Basic polymorphism

### 0.11 STL foundations
- [ ] `vector`
- [ ] `array`
- [ ] `pair`
- [ ] `tuple`
- [ ] `string`
- [ ] Iterators
- [ ] Range-based loops
- [ ] `auto`

---

## Phase 1 — Complexity + Mathematical Foundations

### Complexity
- [ ] Why complexity matters
- [ ] Big-O
- [ ] Big-Theta
- [ ] Big-Omega
- [ ] Worst / average / best case
- [ ] Time complexity of loops
- [ ] Nested loops
- [ ] Amortized intuition
- [ ] Space complexity
- [ ] Auxiliary space
- [ ] Recurrence basics

### Mathematics
- [ ] Factors
- [ ] Prime numbers
- [ ] Sieve of Eratosthenes
- [ ] GCD
- [ ] LCM
- [ ] Euclidean algorithm
- [ ] Modular arithmetic
- [ ] Fast exponentiation
- [ ] Prime factorization
- [ ] Divisibility
- [ ] Logarithms
- [ ] Combinations / permutations basics
- [ ] Modular inverse basics

---

## Phase 2 — Arrays, Strings and Core Patterns

### Arrays
- [ ] Traversal
- [ ] Insert/delete
- [ ] Frequency counting
- [ ] Min/max
- [ ] Prefix sums
- [ ] Difference arrays
- [ ] Subarrays
- [ ] Kadane's algorithm
- [ ] Rotation
- [ ] Matrix traversal
- [ ] Matrix transpose
- [ ] Spiral matrix

### Strings
- [ ] Character frequency
- [ ] Palindrome
- [ ] Anagram
- [ ] Substrings / subsequences
- [ ] String reversal
- [ ] Parsing
- [ ] Basic pattern matching

### Patterns
- [ ] Two pointers
- [ ] Sliding window
- [ ] Prefix/suffix techniques
- [ ] Frequency maps
- [ ] In-place transformations

---

## Phase 3 — Searching and Sorting

### Searching
- [ ] Linear search
- [ ] Binary search
- [ ] First/last occurrence
- [ ] Lower bound
- [ ] Upper bound
- [ ] Search insertion position
- [ ] Binary search on answer
- [ ] Rotated sorted array
- [ ] Peak finding

### Sorting
Implement from scratch:
- [ ] Bubble sort
- [ ] Selection sort
- [ ] Insertion sort
- [ ] Merge sort
- [ ] Quick sort
- [ ] Counting sort
- [ ] Radix sort
- [ ] Bucket sort

Understand:
- [ ] Stable vs unstable sorting
- [ ] In-place vs extra-space sorting
- [ ] Comparison vs non-comparison sorting
- [ ] STL `sort`
- [ ] Custom comparators

---

## Phase 4 — Linked Lists

- [ ] Singly linked list
- [ ] Insert/delete
- [ ] Search
- [ ] Reverse list
- [ ] Middle node
- [ ] Cycle detection
- [ ] Cycle start
- [ ] Merge sorted lists
- [ ] Remove nth node
- [ ] Palindrome list
- [ ] Intersection
- [ ] Doubly linked list
- [ ] Circular linked list
- [ ] Fast/slow pointer pattern

---

## Phase 5 — Stacks, Queues and Hashing

### Stack
- [ ] Array implementation
- [ ] Linked-list implementation
- [ ] STL stack
- [ ] Parentheses matching
- [ ] Min stack
- [ ] Expression evaluation
- [ ] Infix / postfix / prefix
- [ ] Monotonic stack

### Queue
- [ ] Array implementation
- [ ] Linked-list implementation
- [ ] Circular queue
- [ ] STL queue
- [ ] Deque
- [ ] Priority queue

### Hashing
- [ ] Hash function concept
- [ ] Collision handling
- [ ] Separate chaining
- [ ] Open addressing
- [ ] `unordered_map`
- [ ] `unordered_set`
- [ ] `map`
- [ ] `set`
- [ ] Frequency-map problems

---

## Phase 6 — Recursion and Backtracking

### Recursion
- [ ] Base case
- [ ] Recursive state
- [ ] Call stack
- [ ] Recursion tree
- [ ] Tail recursion intuition
- [ ] Multiple recursive calls
- [ ] Recursion with arrays/strings
- [ ] Recursion on linked lists/trees

### Backtracking
- [ ] Choose/explore/unchoose
- [ ] Subsets
- [ ] Subsequences
- [ ] Permutations
- [ ] Combination sum
- [ ] N-Queens
- [ ] Sudoku
- [ ] Maze/path problems
- [ ] Partitioning

---

## Phase 7 — Trees

### Binary trees
- [ ] Terminology
- [ ] Build a tree
- [ ] Preorder
- [ ] Inorder
- [ ] Postorder
- [ ] Level-order
- [ ] Iterative traversals
- [ ] Height/depth
- [ ] Diameter
- [ ] Balanced tree
- [ ] Identical trees
- [ ] Symmetry
- [ ] Views
- [ ] Root-to-node paths
- [ ] Lowest common ancestor

### BST
- [ ] Search
- [ ] Insert
- [ ] Delete
- [ ] Min/max
- [ ] Validate BST
- [ ] Kth smallest/largest
- [ ] Successor/predecessor
- [ ] Sorted-array to BST

### Tree techniques
- [ ] DFS states
- [ ] Tree recursion patterns
- [ ] Euler tour intuition
- [ ] Binary lifting introduction

---

## Phase 8 — Heaps and Tries

### Heap
- [ ] Min heap
- [ ] Max heap
- [ ] Heapify
- [ ] Build heap
- [ ] Heap sort
- [ ] Priority queue
- [ ] Kth largest/smallest
- [ ] Top K pattern
- [ ] Merge K sorted structures
- [ ] Two-heap pattern

### Trie
- [ ] Trie structure
- [ ] Insert/search
- [ ] Prefix queries
- [ ] Delete
- [ ] Word dictionary
- [ ] Autocomplete concept
- [ ] Binary trie basics

---

## Phase 9 — Greedy Algorithms

- [ ] Greedy-choice intuition
- [ ] Activity selection
- [ ] Fractional knapsack
- [ ] Job sequencing
- [ ] Interval scheduling
- [ ] Merge intervals
- [ ] Meeting rooms
- [ ] Minimum platforms
- [ ] Huffman coding
- [ ] Gas station
- [ ] Jump game
- [ ] Local vs global optimality
- [ ] Exchange argument intuition

---

## Phase 10 — Divide & Conquer + Advanced Binary Search

- [ ] Divide and conquer model
- [ ] Merge sort deeply
- [ ] Quick sort deeply
- [ ] Count inversions
- [ ] Binary search on answer
- [ ] Search over feasible answer space
- [ ] Parametric-search style problems
- [ ] Ternary search basics
- [ ] Coordinate compression

---

## Phase 11 — Graphs

### Foundations
- [ ] Graph terminology
- [ ] Directed vs undirected
- [ ] Weighted vs unweighted
- [ ] Adjacency matrix
- [ ] Adjacency list
- [ ] Edge list
- [ ] Degree
- [ ] Connected components

### Traversal
- [ ] BFS
- [ ] DFS
- [ ] Iterative DFS
- [ ] Recursive DFS
- [ ] Multi-source BFS
- [ ] Grid BFS/DFS

### Cycle detection
- [ ] Undirected graph
- [ ] Directed graph
- [ ] DFS coloring/state

### Topological sorting
- [ ] Kahn's algorithm
- [ ] DFS topological sort
- [ ] Course scheduling
- [ ] DAG concepts

### Shortest paths
- [ ] BFS shortest path
- [ ] 0-1 BFS
- [ ] Dijkstra
- [ ] Bellman-Ford
- [ ] Floyd-Warshall
- [ ] Path reconstruction

### Minimum spanning tree
- [ ] Kruskal
- [ ] Prim
- [ ] DSU / Union-Find

### Advanced graph concepts
- [ ] Bipartite graphs
- [ ] Bridges
- [ ] Articulation points
- [ ] Strongly connected components
- [ ] Condensation graph
- [ ] Euler path/circuit
- [ ] Hamiltonian path concept

---

## Phase 12 — Dynamic Programming

### Foundations
- [ ] What DP solves
- [ ] Overlapping subproblems
- [ ] Optimal substructure
- [ ] State definition
- [ ] Transition
- [ ] Base cases
- [ ] Memoization
- [ ] Tabulation
- [ ] Space optimization

### 1D DP
- [ ] Fibonacci
- [ ] Climbing stairs
- [ ] House robber
- [ ] Frog jump

### Knapsack family
- [ ] 0/1 knapsack
- [ ] Unbounded knapsack
- [ ] Subset sum
- [ ] Partition equal subset
- [ ] Coin change
- [ ] Target sum

### Grid DP
- [ ] Unique paths
- [ ] Minimum path sum
- [ ] Obstacles
- [ ] Grid state modeling

### String DP
- [ ] LCS
- [ ] Longest common substring
- [ ] Edit distance
- [ ] Palindromic subsequence
- [ ] Palindrome partitioning

### Sequence DP
- [ ] LIS
- [ ] Bitonic sequence
- [ ] Stock DP variants

### Advanced DP
- [ ] Interval DP
- [ ] Tree DP
- [ ] Bitmask DP
- [ ] Digit DP
- [ ] DP on DAG
- [ ] DP optimization intuition

---

## Phase 13 — Bit Manipulation

- [ ] Binary representation
- [ ] AND / OR / XOR
- [ ] NOT
- [ ] Left/right shift
- [ ] Set/clear/toggle bit
- [ ] Check bit
- [ ] Lowest set bit
- [ ] Power of two
- [ ] Brian Kernighan algorithm
- [ ] XOR tricks
- [ ] Bit masks
- [ ] Subset generation
- [ ] Bitmask DP

---

## Phase 14 — Advanced Data Structures

### DSU
- [ ] Make-set
- [ ] Find
- [ ] Union
- [ ] Path compression
- [ ] Union by size/rank
- [ ] Dynamic connectivity

### Fenwick Tree
- [ ] Prefix sum
- [ ] Point update
- [ ] Range concepts

### Segment Tree
- [ ] Build
- [ ] Query
- [ ] Point update
- [ ] Range update
- [ ] Lazy propagation
- [ ] Merge functions

### Other structures
- [ ] Ordered set / policy-based concepts
- [ ] Sparse table
- [ ] Disjoint sparse table concept
- [ ] Interval tree concept
- [ ] LRU cache structure

---

## Phase 15 — Advanced Graph Algorithms

- [ ] Binary lifting
- [ ] LCA with binary lifting
- [ ] SCC — Kosaraju
- [ ] SCC — Tarjan
- [ ] Bridges / articulation points
- [ ] DAG DP
- [ ] Minimum spanning tree variants
- [ ] Max flow concept
- [ ] Dinic algorithm
- [ ] Min-cut relationship
- [ ] Bipartite matching concept

---

## Phase 16 — Problem-Solving Patterns

Master these as reusable patterns rather than isolated tricks:

- [ ] Two pointers
- [ ] Sliding window
- [ ] Fast/slow pointers
- [ ] Prefix sum
- [ ] Difference array
- [ ] Hashing/frequency
- [ ] Binary search
- [ ] Binary search on answer
- [ ] Merge intervals
- [ ] Monotonic stack
- [ ] Monotonic queue
- [ ] Heap / Top K
- [ ] BFS layers
- [ ] Multi-source BFS
- [ ] DFS state tracking
- [ ] Backtracking
- [ ] Greedy
- [ ] Divide and conquer
- [ ] DP state/transition
- [ ] DSU
- [ ] Sweep line
- [ ] Coordinate compression
- [ ] Prefix trie
- [ ] Bitmasking

---

## Phase 17 — Interview / Competitive Programming Layer

### Interview
- [ ] Complexity-first thinking
- [ ] Clarifying constraints
- [ ] Brute force → optimize
- [ ] Explain before coding
- [ ] Test cases
- [ ] Edge cases
- [ ] Debugging under time pressure
- [ ] Behavioral communication of technical decisions

### Competitive programming
- [ ] Fast I/O
- [ ] Multiple test cases
- [ ] Modular arithmetic
- [ ] GCD/LCM patterns
- [ ] Prime sieve
- [ ] Combinatorics
- [ ] Prefix techniques
- [ ] Coordinate compression
- [ ] Offline queries
- [ ] Sweep line
- [ ] Meet in the middle
- [ ] Randomized algorithms concept

---

# Mastery Milestones

## Level 1 — Syntax
You can write basic C++ without constantly searching syntax.

## Level 2 — Foundations
You can solve basic array/string problems and analyze simple loops.

## Level 3 — Core DSA
You understand linked lists, stacks, queues, hashing, trees and heaps.

## Level 4 — Algorithms
You can independently choose between binary search, greedy, recursion, graph traversal and DP.

## Level 5 — Advanced
You can implement advanced graph/range-query/data-structure algorithms.

## Level 6 — Mastery
You can see an unfamiliar problem, identify its structure, derive an approach, prove why it works, implement it cleanly, and state the complexity.

---

# Problem Volume Target

Do **not** chase a giant problem count.

Suggested minimum after fundamentals:

- Arrays/Strings: 40+
- Searching/Sorting: 25+
- Linked Lists: 20+
- Stack/Queue/Hashing: 30+
- Recursion/Backtracking: 25+
- Trees/BST/Heap/Trie: 50+
- Greedy: 25+
- Graphs: 60+
- Dynamic Programming: 60+
- Advanced DS/Graphs: 30+
- Mixed pattern problems: 100+

Quality and re-solving matter more than raw count.
