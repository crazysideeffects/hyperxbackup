Here is the complete Competitive Programming DSA guide as a Markdown file. Copy the content below and save it as `CP_DSA_Complete_Guide.md`:

```markdown
# Complete DSA Guide for Competitive Programming Exam Preparation

## 🎯 CP vs. Interview Prep: Key Differences

| Aspect | Competitive Programming | Coding Interviews |
|--------|------------------------|-------------------|
| **Goal** | Solve exactly, fast | Find optimal approach |
| **Constraints** | Extreme (10^6 inputs) | Moderate |
| **Code length** | Short, efficient | Clean, readable |
| **Libraries** | STL/Standard lib mastery | Not relied upon heavily |
| **Topics** | Advanced DS, Number Theory | Core DSA patterns |

---

## 📚 Complete Syllabus for Competitive Programming

### PART 1: FOUNDATIONAL DATA STRUCTURES

#### 1. Arrays & Vectors
- Static vs Dynamic arrays
- Two-pointer technique 
- Sliding window 
- Prefix sum array 
- Difference array technique
- Kadane's algorithm (Maximum subarray) 

#### 2. Strings
- Pattern matching: KMP, Rabin-Karp 
- Z-algorithm
- Rolling hash (Polynomial hash) 
- Palindrome techniques (Manacher's algorithm)
- String hashing for equality checks

#### 3. Linked Lists
- Singly, Doubly, Circular 
- Floyd's cycle detection 
- Fast-slow pointer
- Middle element finder

#### 4. Stacks & Queues
- Stack: LIFO operations 
- Queue: FIFO operations 
- Deque (Double-ended queue)
- Monotonic stack (Next Greater Element)
- Priority Queue (Heap) 
- Circular queue

#### 5. Hashing
- Hash tables/maps 
- Hash functions and collisions 
- Rolling hash for strings
- Frequency counting

#### 6. Recursion
- Base case + recursive case 
- Stack memory understanding
- Tail recursion optimization

---

### PART 2: TREES

#### 7. Binary Trees
- Traversals: Inorder, Preorder, Postorder 
- Level order (BFS) 
- Height and depth calculations 
- Diameter of tree 
- Lowest Common Ancestor (LCA) 

#### 8. Binary Search Trees (BST)
- Insertion, deletion, search 
- Floor and ceiling
- Range queries
- K-th smallest element

#### 9. Balanced Trees (Advanced)
- AVL trees (rotations) 
- Red-Black trees
- Segment Trees (Range queries with updates)
- Fenwick Tree / BIT (Binary Indexed Tree) 
- Trie (Prefix Tree) - for strings 

#### 10. Heaps
- Min-Heap, Max-Heap 
- Heapify operation (O(n))
- Heap sort 
- Priority Queue applications 

---

### PART 3: GRAPHS

#### 11. Graph Representations
- Adjacency matrix
- Adjacency list 

#### 12. Graph Traversals
- Depth First Search (DFS) 
- Breadth First Search (BFS) 
- Connected components 
- Cycle detection 

#### 13. Shortest Path Algorithms
- Dijkstra's algorithm (non-negative weights) 
- Bellman-Ford (negative weights) 
- Floyd-Warshall (All-pairs) 

#### 14. Minimum Spanning Tree (MST)
- Kruskal's algorithm (Disjoint Set) 
- Prim's algorithm 

#### 15. Advanced Graph Algorithms
- Topological Sorting (DAG) 
- Strongly Connected Components (Kosaraju/Tarjan) 
- Bridges and Articulation points 
- Eulerian Path/Circuit 
- Maximum Flow (Edmonds-Karp) 

---

### PART 4: SORTING & SEARCHING

#### 16. Sorting Algorithms

| Algorithm | Time | Space | Stable | Use Case |
|-----------|------|-------|--------|----------|
| Bubble Sort | O(n²) | O(1) | Yes | Educational |
| Selection Sort | O(n²) | O(1) | No | Small arrays |
| Insertion Sort | O(n²) | O(1) | Yes | Nearly sorted |
| Merge Sort | O(n log n) | O(n) | Yes | General purpose |
| Quick Sort | O(n log n) avg | O(log n) | No | Fast in practice |
| Heap Sort | O(n log n) | O(1) | No | Memory constrained |
| Counting Sort | O(n+k) | O(k) | Yes | Small range integers |
| Radix Sort | O(d*(n+k)) | O(n+k) | Yes | Fixed-length keys |

#### 17. Searching Algorithms
- Linear Search 
- Binary Search (sorted arrays) 
- Ternary Search (unimodal functions)
- Jump Search
- Interpolation Search 

---

### PART 5: ALGORITHMIC PARADIGMS

#### 18. Divide and Conquer
- Merge Sort 
- Quick Sort 
- Binary Search 
- Closest pair of points 
- Karatsuba multiplication 
- Strassen's matrix multiplication 

#### 19. Greedy Algorithms
- Activity Selection 
- Fractional Knapsack 
- Huffman Coding 
- Job Sequencing 
- Coin change (Greedy vs DP) 

#### 20. Dynamic Programming (DP) 

**1D DP:**
- Fibonacci
- Climbing stairs
- House Robber

**2D DP:**
- Unique paths
- Longest Common Subsequence (LCS) 
- Edit distance (Levenshtein) 
- 0/1 Knapsack 

**Interval DP:**
- Matrix Chain Multiplication 
- Palindrome partitioning

**DP on Trees:**
- Tree diameter
- Tree DP (max independent set)

**DP with Bitmask:**
- Traveling Salesman (TSP) 
- Subset DP

**DP Optimization:**
- Memoization (Top-down) 
- Tabulation (Bottom-up) 
- Space optimization
- Convex Hull Trick (advanced)

#### 21. Backtracking 
- N-Queens problem 
- Sudoku solver 
- Rat in a maze 
- Knight's tour 
- Subset generation 
- Permutations/Combinations 

#### 22. Bit Manipulation 
- Bitwise operations (AND, OR, XOR, NOT, shifts)
- Counting set bits (Brian Kernighan) 
- Checking power of two
- Subset enumeration (bitmasking)
- XOR tricks (single number problems)

---

### PART 6: MATHEMATICAL & NUMBER THEORY

#### 23. Number Theory for CP 
- Prime checking (Sieve of Eratosthenes) 
- Prime factorization
- GCD/LCM (Euclidean algorithm) 
- Modular arithmetic
- Modular exponentiation (Fast powering) 
- Modular inverse (Fermat's little theorem)
- Chinese Remainder Theorem

#### 24. Combinatorics
- Factorials and binomial coefficients 
- Pascal's triangle 
- Permutations and combinations 
- Inclusion-Exclusion principle

---

### PART 7: ADVANCED DATA STRUCTURES

#### 25. Advanced DS for CP

**Disjoint Set Union (DSU/Union-Find)**
```cpp
// C++ Implementation
class DSU {
    vector<int> parent, rank;
public:
    DSU(int n) {
        parent.resize(n);
        rank.resize(n, 0);
        for(int i = 0; i < n; i++) parent[i] = i;
    }
    
    int find(int x) {
        if(parent[x] != x)
            parent[x] = find(parent[x]); // Path compression
        return parent[x];
    }
    
    void unite(int x, int y) {
        int rootX = find(x);
        int rootY = find(y);
        if(rootX != rootY) {
            if(rank[rootX] < rank[rootY])
                parent[rootX] = rootY;
            else if(rank[rootX] > rank[rootY])
                parent[rootY] = rootX;
            else {
                parent[rootY] = rootX;
                rank[rootX]++;
            }
        }
    }
};
```

**Fenwick Tree (Binary Indexed Tree)**
```cpp
// Point updates + prefix sums
class FenwickTree {
    vector<int> bit;
    int n;
public:
    FenwickTree(int n) : n(n), bit(n+1, 0) {}
    
    void update(int idx, int delta) {
        while(idx <= n) {
            bit[idx] += delta;
            idx += idx & -idx;
        }
    }
    
    int query(int idx) {
        int sum = 0;
        while(idx > 0) {
            sum += bit[idx];
            idx -= idx & -idx;
        }
        return sum;
    }
    
    int rangeSum(int l, int r) {
        return query(r) - query(l-1);
    }
};
```

**Segment Tree**
```cpp
// Range queries + point updates
class SegmentTree {
    vector<int> tree;
    int n;
public:
    SegmentTree(vector<int>& arr) {
        n = arr.size();
        tree.resize(4*n);
        build(arr, 1, 0, n-1);
    }
    
    void build(vector<int>& arr, int node, int start, int end) {
        if(start == end) {
            tree[node] = arr[start];
        } else {
            int mid = (start + end) / 2;
            build(arr, 2*node, start, mid);
            build(arr, 2*node+1, mid+1, end);
            tree[node] = tree[2*node] + tree[2*node+1];
        }
    }
    
    void update(int idx, int val, int node, int start, int end) {
        if(start == end) {
            tree[node] = val;
        } else {
            int mid = (start + end) / 2;
            if(idx <= mid)
                update(idx, val, 2*node, start, mid);
            else
                update(idx, val, 2*node+1, mid+1, end);
            tree[node] = tree[2*node] + tree[2*node+1];
        }
    }
    
    int query(int L, int R, int node, int start, int end) {
        if(R < start || L > end) return 0;
        if(L <= start && end <= R) return tree[node];
        int mid = (start + end) / 2;
        return query(L, R, 2*node, start, mid) +
               query(L, R, 2*node+1, mid+1, end);
    }
};
```

**Trie (Prefix Tree)**
```cpp
struct TrieNode {
    TrieNode* children[26];
    bool isEnd;
    
    TrieNode() {
        for(int i = 0; i < 26; i++)
            children[i] = nullptr;
        isEnd = false;
    }
};

class Trie {
    TrieNode* root;
public:
    Trie() {
        root = new TrieNode();
    }
    
    void insert(string word) {
        TrieNode* curr = root;
        for(char c : word) {
            int idx = c - 'a';
            if(!curr->children[idx])
                curr->children[idx] = new TrieNode();
            curr = curr->children[idx];
        }
        curr->isEnd = true;
    }
    
    bool search(string word) {
        TrieNode* curr = root;
        for(char c : word) {
            int idx = c - 'a';
            if(!curr->children[idx])
                return false;
            curr = curr->children[idx];
        }
        return curr->isEnd;
    }
    
    bool startsWith(string prefix) {
        TrieNode* curr = root;
        for(char c : prefix) {
            int idx = c - 'a';
            if(!curr->children[idx])
                return false;
            curr = curr->children[idx];
        }
        return true;
    }
};
```

---

### PART 8: STANDARD LIBRARY MASTERY

#### C++ STL (Must for CP)

```cpp
// Containers
#include <vector>      // vector, deque, array
#include <stack>       // stack
#include <queue>       // queue, priority_queue
#include <set>         // set, multiset
#include <unordered_set>
#include <map>         // map, multimap
#include <unordered_map>

// Algorithms
#include <algorithm>
// sort(), binary_search(), lower_bound(), upper_bound()
// next_permutation(), reverse()
// min_element(), max_element()

// Numeric
#include <numeric>
// __gcd(), accumulate()

// I/O Optimization for CP
ios_base::sync_with_stdio(false);
cin.tie(NULL);
cout.tie(NULL);
```

#### Python Standard Library

```python
# Data structures
from collections import deque, Counter, defaultdict
import heapq  # priority queue
import bisect  # binary search
from functools import lru_cache  # memoization

# Useful functions
import math  # math.gcd()
from itertools import permutations, combinations

# Fast I/O for CP
import sys
input = sys.stdin.readline
print = sys.stdout.write
```

---

### PART 9: COMPLEXITY ANALYSIS

| Notation | Name | Example |
|----------|------|---------|
| O(1) | Constant | Array access |
| O(log n) | Logarithmic | Binary search  |
| O(n) | Linear | Array traversal |
| O(n log n) | Linearithmic | Merge sort |
| O(n²) | Quadratic | Bubble sort |
| O(2ⁿ) | Exponential | Subset generation |
| O(n!) | Factorial | Permutations |

**Key for CP:**
- n ≤ 20 → O(2ⁿ) OK
- n ≤ 100 → O(n³) OK
- n ≤ 10³ → O(n²) OK
- n ≤ 10⁵ → O(n log n) needed
- n ≤ 10⁷ → O(n) needed

---

### PART 10: PROBLEM PATTERNS (Must Recognize)

| Problem Smell | Likely Pattern |
|---------------|----------------|
| "Count subarrays with sum K" | Prefix sum + HashMap |
| "Sorted array" + "pair sum" | Two pointers |
| "Maximum subarray" | Kadane / Sliding window |
| "Longest substring without repeating" | Sliding window |
| "Minimum jumps to end" | Greedy / BFS |
| "Number of ways to reach" | DP |
| "Shortest path in graph" | BFS / Dijkstra |
| "Cycle detection" | DFS / Floyd |
| "Schedule/merge intervals" | Sort by start/end |
| "Smallest/Largest with constraints" | Binary search on answer |
| "Distinct elements in subarray" | Two pointers with frequency map |
| "Kth smallest/largest" | Heap / Quick Select |
| "Palindrome queries" | Manacher / Rolling hash |
| "Range queries with updates" | Segment Tree / Fenwick |
| "Connected components" | DSU / DFS |

---

## 📋 Quick Revision Checklist

### Week 1-2: Core DS
- [ ] Arrays (prefix sum, 2-pointer, sliding window)
- [ ] Strings (KMP, rolling hash)
- [ ] Stack/Queue (monotonic stack)
- [ ] Recursion (print patterns, tree traversals)

### Week 3-4: Trees & Graphs
- [ ] Binary Tree traversals (recursive + iterative)
- [ ] BST operations
- [ ] Trie implementation
- [ ] DFS/BFS on graphs
- [ ] Dijkstra, Bellman-Ford, Floyd-Warshall
- [ ] MST (Kruskal + Prim)

### Week 5: Algorithms
- [ ] All sorting (know trade-offs)
- [ ] Binary search (also on answer) 
- [ ] Backtracking (N-Queens, Sudoku)
- [ ] Greedy (Activity, fractional knapsack)

### Week 6: DP
- [ ] 1D DP (fibonacci, climbing stairs)
- [ ] 2D DP (LCS, knapsack, edit distance) 
- [ ] DP on trees
- [ ] DP with bitmask (TSP)

### Week 7: Advanced
- [ ] DSU (Union-Find)
- [ ] Segment Tree (range queries)
- [ ] Fenwick Tree (prefix sums)
- [ ] Sparse Table (RMQ)

### Week 8: Math & Practice
- [ ] Sieve of Eratosthenes
- [ ] GCD/LCM, modular exponentiation
- [ ] Virtual contests (2-3 per week)

---

## 🏆 Priority Learning Order for CP

**Tier 1 (Every CP must know deeply):**

1. **Prefix Sum** - O(1) range sum queries
2. **Two Pointers** - O(n) solutions for pair problems
3. **Binary Search** - O(log n) search and answer optimization
4. **DFS/BFS** - Graph traversals
5. **Sorting** (Merge, Quick, Count) - O(n log n) and O(n+k)
6. **Recursion & Backtracking** - Permutations, combinations

**Tier 2 (Most problems need these):**

7. **Greedy algorithms** - Local optimum choices
8. **Dynamic Programming** (1D & 2D) - Overlapping subproblems
9. **DSU (Union-Find)** - Connected components
10. **Dijkstra's algorithm** - Shortest path (non-negative)
11. **Bit manipulation** - Efficient bit operations

**Tier 3 (Advanced, for harder contests):**

12. **Segment Tree** - Range queries + updates
13. **Fenwick Tree** - Prefix sums with updates
14. **KMP / Z-algorithm** - String pattern matching
15. **Floyd-Warshall** - All-pairs shortest path
16. **Number Theory** (Sieve, modular inverse)
17. **Topological sort** - DAG ordering
18. **MST (Kruskal/Prim)** - Minimum spanning tree

---

## 🔥 Common Algorithms in Code

### Binary Search Template
```cpp
int binarySearch(vector<int>& arr, int target) {
    int left = 0, right = arr.size() - 1;
    while(left <= right) {
        int mid = left + (right - left) / 2;
        if(arr[mid] == target) return mid;
        else if(arr[mid] < target) left = mid + 1;
        else right = mid - 1;
    }
    return -1;
}

// Binary Search on Answer
bool check(int mid) { /* condition */ }

int solve() {
    int lo = 0, hi = 1e9, ans = -1;
    while(lo <= hi) {
        int mid = lo + (hi - lo) / 2;
        if(check(mid)) {
            ans = mid;
            hi = mid - 1;
        } else {
            lo = mid + 1;
        }
    }
    return ans;
}
```

### BFS Template
```cpp
void bfs(int start, vector<vector<int>>& graph) {
    vector<bool> visited(graph.size(), false);
    queue<int> q;
    q.push(start);
    visited[start] = true;
    
    while(!q.empty()) {
        int node = q.front(); q.pop();
        cout << node << " ";
        for(int neighbor : graph[node]) {
            if(!visited[neighbor]) {
                visited[neighbor] = true;
                q.push(neighbor);
            }
        }
    }
}
```

### DFS Template
```cpp
void dfs(int node, vector<vector<int>>& graph, vector<bool>& visited) {
    visited[node] = true;
    cout << node << " ";
    for(int neighbor : graph[node]) {
        if(!visited[neighbor]) {
            dfs(neighbor, graph, visited);
        }
    }
}
```

### Dijkstra's Algorithm
```cpp
vector<int> dijkstra(int start, vector<vector<pair<int,int>>>& graph) {
    int n = graph.size();
    vector<int> dist(n, INT_MAX);
    priority_queue<pair<int,int>, vector<pair<int,int>>, greater<pair<int,int>>> pq;
    
    dist[start] = 0;
    pq.push({0, start});
    
    while(!pq.empty()) {
        int d = pq.top().first;
        int node = pq.top().second;
        pq.pop();
        
        if(d > dist[node]) continue;
        
        for(auto& edge : graph[node]) {
            int neighbor = edge.first;
            int weight = edge.second;
            
            if(dist[node] + weight < dist[neighbor]) {
                dist[neighbor] = dist[node] + weight;
                pq.push({dist[neighbor], neighbor});
            }
        }
    }
    return dist;
}
```

### Sieve of Eratosthenes
```cpp
vector<bool> sieve(int n) {
    vector<bool> isPrime(n+1, true);
    isPrime[0] = isPrime[1] = false;
    
    for(int i = 2; i * i <= n; i++) {
        if(isPrime[i]) {
            for(int j = i * i; j <= n; j += i) {
                isPrime[j] = false;
            }
        }
    }
    return isPrime;
}
```

### Fast Modular Exponentiation
```cpp
long long powerMod(long long base, long long exp, long long mod) {
    long long result = 1;
    base %= mod;
    while(exp > 0) {
        if(exp & 1) result = (result * base) % mod;
        base = (base * base) % mod;
        exp >>= 1;
    }
    return result;
}
```

---

## 📊 Resource Links

### Visualization & Learning
- **[VisuAlgo](https://visualgo.net)** - Best for algorithm visualization
- **[GeeksforGeeks DSA](https://www.geeksforgeeks.org/data-structures/)** - Comprehensive theory
- **[CP Algorithms](https://cp-algorithms.com/)** - Competitive programming algorithms

### Practice Platforms
- **[Codeforces](https://codeforces.com)** - Best for CP (real contest experience)
- **[AtCoder](https://atcoder.jp)** - High quality problems
- **[CSES Problem Set](https://cses.fi/problemset/)** - Topic-wise practice
- **[LeetCode](https://leetcode.com)** - Good for interview patterns

### Problem Difficulty Guide (Codeforces)
| Rating | Level | What to expect |
|--------|-------|----------------|
| 800-1000 | Beginner | Basic implementation |
| 1100-1200 | Easy | Simple algorithms |
| 1300-1400 | Intermediate | Standard techniques |
| 1500-1600 | Medium | Combine 2-3 concepts |
| 1700-1900 | Hard | Requires deep thinking |
| 2000+ | Advanced | Non-trivial observations |

### Strategy Guides
- **[Codeforces DSA Roadmap](https://mirror.codeforces.com/blog/entry/152260)** - Complete learning path
- **[How to practice effectively](https://mirror.codeforces.com/blog/entry/66909)** - CP strategy
- **[Topic wise problems](https://mirror.codeforces.com/blog/entry/55274)** - Curated problem lists

---

## 💡 CP-Specific Strategies

### 1. Stop Solving — Start Understanding 
After each problem, ask:
- Why did this approach work?
- What constraints pushed me toward this solution?
- Can I solve it with a different method?
- What's the time complexity bottleneck?

### 2. Master Patterns, Not Problems 
Top performers recognize patterns instantly. Train to say: 
*"This smells like greedy + sorting"* or *"This is DP with bitmask"*

### 3. Upsolving Is Your Secret Weapon 
Real growth happens after contests:
- Revisit unsolved problems
- Read editorials carefully
- Re-implement without looking
- Understand why you failed

### 4. Speed Comes from Familiarity 
Create templates/snippets for:
- Graphs (DFS, BFS, Dijkstra)
- DSU (Union-Find)
- Segment trees
- Fast I/O patterns
- Common modulo operations

### 5. Learn to Read Problems Efficiently 
- **First pass:** Identify constraints (n ≤ 10^5 means O(n log n))
- **Second pass:** Identify core problem (ignore story)
- **Third pass:** Match pattern from mental library

### 6. Use Ratings as Feedback 
If stuck at a rating:
- You're repeating same mistakes
- Avoiding harder problems
- Not reviewing properly

Push slightly beyond comfort zone every time (+200 rating above current)

### 7. Consistency Beats Intensity 
- 2-3 problems daily
- 1-2 contests per week
- 30 minutes reading editorial max
- Regular revision (spaced repetition)

### 8. Build a Thinking Framework 
Before coding:
1. What are constraints? (Time/Memory)
2. What is brute force?
3. Can I optimize using pattern?
4. Which data structure fits?
5. Write pseudo-code

### 9. The 20-Question Rule 
For each topic, solve:
- 12 easy problems (build confidence)
- 8 medium problems (build depth)

This builds solid fundamentals before moving on.

### 10. Dry Run Everything 
Execute code on paper with a pen. This catches bugs and deepens understanding.

### 11. Time Management in Contests
| Time | Action |
|------|--------|
| 0-5 min | Read all problems, start with easiest |
| 5-30 min | Solve easiest, get first AC |
| 30-90 min | Attack medium difficulty |
| 90-120 min | Review, attempt one hard |
| Last 10 min | Check already submitted solutions for edge cases |

### 12. Common Pitfalls to Avoid
- ❌ Using recursion for depth > 10^5 (stack overflow)
- ❌ Not using fast I/O for large inputs
- ❌ 64-bit integers (long long) when needed
- ❌ Off-by-one errors in binary search
- ❌ Not resetting global variables between test cases

---

## 📈 Progress Tracking Template

```markdown
| Topic | Problems Solved | Last Practiced | Confidence (1-5) |
|-------|----------------|----------------|------------------|
| Prefix Sum | 15 | Day 3 | 4 |
| Two Pointers | 12 | Day 5 | 4 |
| Binary Search | 20 | Day 7 | 5 |
| DFS/BFS | 18 | Day 10 | 4 |
| DP (1D) | 10 | Day 12 | 3 |
| DSU | 8 | Day 14 | 3 |
| Segment Tree | 5 | Day 18 | 2 |
```

---

## 🎓 Final Advice

| For Interviews | For Competitive Programming |
|----------------|----------------------------|
| Clean, readable code | Short, efficient code |
| Explain your thought process | Fast implementation |
| Optimal solution is enough | Must handle extreme constraints |
| Standard libraries okay | STL mastery is required |
| 1-2 problems per day | 5-10 problems per day |
| Focus on 75 problems | Focus on 500+ problems |

**The CP Mindset:**
- Speed without sacrificing correctness
- Template-based implementation
- Pattern recognition > Problem memorization
- Learning from editorial after contest
- Consistency over intensity

**Remember:** 
- Understanding 30 problems deeply > solving 100 superficially
- Each problem should teach you a pattern you can apply to 10 others
- Your rating is not your worth - focus on learning
- Every expert was once a beginner

**Stay curious, consistent, and solve smarter — not just more.** 🚀

---

## 📝 Quick Reference Card

```
┌─────────────────────────────────────────────────────────────┐
│  COMPETITIVE PROGRAMMING QUICK REFERENCE                    │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  TIME COMPLEXITY GUIDE:                                     │
│  n ≤ 20      → O(2ⁿ)                                        │
│  n ≤ 100     → O(n³)                                        │
│  n ≤ 10³     → O(n²)                                        │
│  n ≤ 10⁵     → O(n log n)                                   │
│  n ≤ 10⁷     → O(n)                                         │
│                                                             │
│  MUST-KNOW ALGORITHMS:                                      │
│  □ Binary Search                                            │
│  □ DFS/BFS                                                  │
│  □ Dijkstra                                                 │
│  □ DSU                                                      │
│  □ Segment Tree                                             │
│  □ Sieve of Eratosthenes                                    │
│  □ Modular Exponentiation                                   │
│                                                             │
│  CONTEST STRATEGY:                                          │
│  1. Read all problems (5 min)                               │
│  2. Solve easiest (30 min)                                  │
│  3. Attack medium (60 min)                                  │
│  4. Review submissions (10 min)                             │
│                                                             │
│  BOOKMARKS:                                                 │
│  • visualgo.net                                             │
│  • cp-algorithms.com                                        │
│  • codeforces.com                                           │
│  • cses.fi/problemset                                       │
└─────────────────────────────────────────────────────────────┘
```

---

**End of Guide - Happy Coding!** 🎯
```

To save this file:

1. **Copy** all the content above
2. **Open** a text editor (VS Code, Notepad++, or any text editor)
3. **Paste** the content
4. **Save** as `CP_DSA_Complete_Guide.md`
5. **Open** with any Markdown viewer (GitHub, Typora, Obsidian, or VS Code with Markdown preview)

This guide covers:
- All major DSA topics for CP
- Time complexity analysis
- Code templates for common algorithms
- Study schedule and checklist
- Resource links
- CP-specific strategies and tips
- Quick reference card