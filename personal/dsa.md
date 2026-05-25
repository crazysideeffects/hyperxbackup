Here's the complete study plan as a Markdown file. You can copy this and save it as `DSA_Study_Plan.md`:

```markdown
# Complete DSA Study Guide for LeetCode
## Time-Efficient, Question-First Approach

---

## 📌 Core Strategy
**Learn by pattern recognition, not theory-first.** Each topic = 3-5 carefully chosen problems that build intuition.

---

## 🎯 Pattern Recognition Cheat Sheet

| Problem says | Likely technique |
|--------------|------------------|
| "sorted array" + "pair" | Two pointers |
| "contiguous subarray" | Sliding window |
| "maximum/minimum" + "can't change past" | Greedy |
| "number of ways" / "optimal" / "min cost" | DP |
| "subarray sum query" | Prefix sum |
| "tree path" / "lowest common ancestor" | DFS post-order |
| "cycle in linked list" | Floyd |
| "all subarrays" with constraint | Sliding window |

---

## 📅 2-Week Accelerated Study Plan

### Week 1: Foundations

| Day | Focus Area | Key Pattern | Core Problems | Resources |
|:---|:---|:---|:---|:---|
| **1** | **Two Pointers** | Opposite/Fast-Slow<br>*Keywords:* sorted, pair, palindrome | 1. Two Sum II (167)<br>2. Remove Duplicates (26)<br>3. Container w/ Most Water (11) | [LeetCode Pattern Guide](https://github.com/nandini-gangrade/LeetcodePatterns) |
| **2** | **Sliding Window** | Fixed/Variable<br>*Keywords:* subarray, contiguous | 1. Max Subarray (53)<br>2. Longest Substring (3)<br>3. Min Size Subarray (209) | [VisuAlgo](https://visualgo.net) |
| **3** | **Prefix Sums** | Cumulative totals<br>*Keywords:* range sum, equals k | 1. Range Sum Query (303)<br>2. Subarray Sum K (560) | [Pattern Guide](https://leetcode.com/discuss/post/7882581/) |
| **4** | **Greedy** | Local optimum<br>*Keywords:* merge, schedule, maximize | 1. Jump Game (55)<br>2. Merge Intervals (56)<br>3. Gas Station (134) | [GFG Greedy](https://www.geeksforgeeks.org/greedy-algorithms/) |
| **5** | **Trees** | DFS/BFS<br>*Keywords:* depth, LCA, diameter | 1. Max Depth (104)<br>2. Diameter (543)<br>3. Level Order (102) | [Tree Problems](https://github.com/ramahasiba/Practicing_Leetcode_Problems) |
| **6** | **Floyd's Cycle** | Tortoise & Hare<br>*Keywords:* cycle, duplicate | 1. Linked List Cycle (141)<br>2. Find Duplicate (287)<br>3. Happy Number (202) | [Floyd's Algorithm](https://www.geeksforgeeks.org/floyds-cycle-finding-algorithm/) |
| **7** | **DP Intro** | Overlapping subproblems<br>*Keywords:* ways, optimal | 1. Climbing Stairs (70)<br>2. House Robber (198)<br>3. Coin Change (322) | [VisuAlgo DP](https://visualgo.net/en/recursion) |

### Week 2: Advanced & Integration

| Day | Focus Area | Key Pattern | Core Problems | Resources |
|:---|:---|:---|:---|:---|
| **8** | **2D DP** | Grid/String DP | 1. Unique Paths (62)<br>2. LCS (1143)<br>3. Edit Distance (72) | [DP Visualizer](https://dpvizu.com) |
| **9** | **Advanced Trees** | Post-order magic | 1. LCA (236)<br>2. Max Path Sum (124)<br>3. Construct Tree (105) | [Tree Visualizer](https://visualgo.net/en/bst) |
| **10** | **State DP** | Multiple states | 1. Stock with Cooldown (309)<br>2. House Robber II (213) | [DP Patterns](https://leetcode.com/discuss/general-discussion/458695/dynamic-programming-patterns) |
| **11-12** | **Mixed Review** | Pattern recognition | Random medium problems | [Blind 75](https://leetcode.com/discuss/general-discussion/460599/blind-75-leetcode-questions) |
| **13-14** | **Mock Tests** | Time pressure | 5 random problems daily | [LeetCode Explore](https://leetcode.com/explore/) |

---

## 📚 Detailed Topic Guides

## 1️⃣ TWO POINTERS

### Templates

```python
# Opposite pointers (sorted array)
left, right = 0, len(arr)-1
while left < right:
    if arr[left] + arr[right] == target:
        return [left, right]
    elif arr[left] + arr[right] < target:
        left += 1
    else:
        right -= 1

# Fast-slow pointer (in-place removal)
slow = 0
for fast in range(len(arr)):
    if condition:
        arr[slow] = arr[fast]
        slow += 1
```

### Must-Do Problems
1. Two Sum II (167) - Classic opposite pointers
2. Remove Duplicates (26) - Fast/slow pointer
3. Container with Most Water (11) - Greedy two-pointer
4. 3Sum (15) - Fixed pointer + two pointers
5. Valid Palindrome (125) - Inward pointers

### Resources
- [LeetCode Pattern: Two Pointers](https://github.com/nandini-gangrade/LeetcodePatterns)
- [Visualization](https://visualgo.net/en)

---

## 2️⃣ SLIDING WINDOW

### Templates

```python
# Fixed window size
k = window_size
window_sum = sum(arr[:k])
for i in range(k, len(arr)):
    window_sum += arr[i] - arr[i-k]

# Variable window size
left = 0
for right in range(len(arr)):
    # add arr[right] to window
    while invalid_condition():
        # remove arr[left]
        left += 1
    update_answer(left, right)
```

### Must-Do Problems
1. Best Time to Buy Stock (121) - Simple sliding min/max
2. Maximum Subarray (53) - Kadane's algorithm
3. Longest Substring Without Repeating (3) - Variable window
4. Minimum Size Subarray Sum (209) - Shrinkable window
5. Fruit Into Baskets (904) - At most 2 types

### Resources
- [Sliding Window Pattern](https://leetcode.com/problems/longest-substring-without-repeating-characters/solution/)
- [Visualization](https://visualgo.net/en)

---

## 3️⃣ GREEDY & INTERVALS

### Templates

```python
# Interval scheduling
intervals.sort(key=lambda x: x[1])  # sort by end
count = 1
prev_end = intervals[0][1]
for start, end in intervals[1:]:
    if start >= prev_end:
        count += 1
        prev_end = end

# Jump game
farthest = 0
for i in range(len(nums)):
    if i > farthest:
        return False
    farthest = max(farthest, i + nums[i])
```

### Must-Do Problems
1. Assign Cookies (455) - Smallest sufficient
2. Jump Game (55) - Track farthest reachable
3. Jump Game II (45) - Minimal jumps
4. Merge Intervals (56) - Sort by start
5. Non-overlapping Intervals (435) - Remove minimum
6. Gas Station (134) - Total sum + greedy start

### Resources
- [Greedy Algorithms](https://www.geeksforgeeks.org/greedy-algorithms/)
- [Interval Problems](https://leetcode.com/problems/merge-intervals/solution/)

---

## 4️⃣ DYNAMIC PROGRAMMING

### Pattern Recognition Matrix

| Problem Type | State Definition | Transition |
|--------------|-----------------|-------------|
| Fibonacci style | dp[i] = value at i | dp[i] = dp[i-1] + dp[i-2] |
| 0/1 Knapsack | dp[i][w] = max value | take or skip |
| Unbounded Knapsack | dp[i][w] = max value | take multiple |
| LCS / String | dp[i][j] = best for s1[:i], s2[:j] | match or skip |
| Buy/Sell Stock | dp[day][held] = max profit | hold or sell |
| Palindromes | dp[i][j] = is palindrome | expand from center |

### Templates

```python
# 1D DP
dp = [0] * (n+1)
dp[0] = base
for i in range(1, n+1):
    dp[i] = recurrence(dp[i-1], dp[i-2], ...)

# 2D DP
dp = [[0]*(m+1) for _ in range(n+1)]
for i in range(1, n+1):
    for j in range(1, m+1):
        if condition:
            dp[i][j] = dp[i-1][j-1] + 1
        else:
            dp[i][j] = max(dp[i-1][j], dp[i][j-1])

# Space-optimized DP
prev2, prev1 = base1, base2
for i in range(2, n):
    curr = prev1 + prev2
    prev2, prev1 = prev1, curr
```

### Must-Do Problems (By Level)

**Level 1 - Warmup**
1. Climbing Stairs (70) - Classic Fibonacci DP
2. House Robber (198) - Can't take adjacent
3. Maximum Subarray (53) - Kadane's algorithm

**Level 2 - 1D DP**
4. Coin Change (322) - Min coins (unbounded)
5. Word Break (139) - Can segment string
6. Decode Ways (91) - Ways to decode digits

**Level 3 - 2D DP**
7. Unique Paths (62) - Grid paths
8. Longest Common Subsequence (1143) - Classic
9. Edit Distance (72) - Transform string A to B

**Level 4 - State DP**
10. Best Time to Buy/Sell Stock with Cooldown (309)
11. House Robber II (213) - Circular

### Resources
- [VisuAlgo DP Visualization](https://visualgo.net/en/recursion)
- [DP Visualizer](https://dpvizu.com)
- [DP Patterns Guide](https://leetcode.com/discuss/general-discussion/458695/dynamic-programming-patterns)

---

## 5️⃣ TREE TRAVERSALS & PROPERTIES

### Templates

```python
# DFS - Preorder (Root-Left-Right)
def preorder(node):
    if not node: return
    process(node)
    preorder(node.left)
    preorder(node.right)

# DFS - Inorder (Left-Root-Right)
def inorder(node):
    if not node: return
    inorder(node.left)
    process(node)
    inorder(node.right)

# DFS - Postorder (Left-Right-Root) - Best for subtree results
def postorder(node):
    if not node: return 0
    left_val = postorder(node.left)
    right_val = postorder(node.right)
    return combine(left_val, right_val, node.val)

# BFS - Level Order
from collections import deque
def levelOrder(root):
    if not root: return []
    result, q = [], deque([root])
    while q:
        level = []
        for _ in range(len(q)):
            node = q.popleft()
            level.append(node.val)
            if node.left: q.append(node.left)
            if node.right: q.append(node.right)
        result.append(level)
    return result
```

### Must-Do Problems

**Traversals**
1. Binary Tree Inorder (94) - Left-Root-Right
2. Binary Tree Preorder (144) - Root-Left-Right
3. Binary Tree Postorder (145) - Left-Right-Root
4. Level Order (102) - BFS with queue

**Properties**
5. Maximum Depth (104) - Simple recursion
6. Diameter of Binary Tree (543) - Max path through node
7. Balanced Binary Tree (110) - Height difference ≤1
8. Same Tree (100) - Compare recursively
9. Subtree of Another Tree (572) - Serialize or recursion

**Advanced**
10. Lowest Common Ancestor (236) - Post-order magic
11. Binary Tree Maximum Path Sum (124) - Hard post-order
12. Construct from Inorder & Preorder (105) - Index mapping

### Resources
- [VisuAlgo BST Visualization](https://visualgo.net/en/bst)
- [Tree Problems List](https://github.com/ramahasiba/Practicing_Leetcode_Problems)

---

## 6️⃣ PREFIX SUM

### Templates

```python
# Build prefix sums
prefix = [0]*(n+1)
for i in range(n):
    prefix[i+1] = prefix[i] + arr[i]

# Subarray sum from i to j = prefix[j+1] - prefix[i]

# Subarray Sum Equals K (O(n) time)
from collections import defaultdict
def subarraySum(nums, k):
    prefix_count = defaultdict(int)
    prefix_count[0] = 1
    curr_sum = 0
    ans = 0
    for num in nums:
        curr_sum += num
        ans += prefix_count[curr_sum - k]
        prefix_count[curr_sum] += 1
    return ans

# Product of Array Except Self
def productExceptSelf(nums):
    n = len(nums)
    answer = [1] * n
    
    # left products
    left = 1
    for i in range(n):
        answer[i] = left
        left *= nums[i]
    
    # right products
    right = 1
    for i in range(n-1, -1, -1):
        answer[i] *= right
        right *= nums[i]
    
    return answer
```

### Must-Do Problems
1. Range Sum Query - Immutable (303) - Basic prefix
2. Subarray Sum Equals K (560) - Prefix + hashmap
3. Continuous Subarray Sum (523) - Prefix modulo
4. Product of Array Except Self (238) - Left & right products

---

## 7️⃣ FLOYD'S CYCLE DETECTION

### Templates

```python
# Detect cycle
def hasCycle(head):
    if not head: return False
    slow = fast = head
    while fast and fast.next:
        slow = slow.next
        fast = fast.next.next
        if slow == fast:
            return True
    return False

# Find cycle start
def detectCycle(head):
    if not head: return None
    slow = fast = head
    
    # Find meeting point
    while fast and fast.next:
        slow = slow.next
        fast = fast.next.next
        if slow == fast:
            break
    else:
        return None
    
    # Find cycle start
    slow = head
    while slow != fast:
        slow = slow.next
        fast = fast.next
    
    return slow

# Find duplicate number (array as linked list)
def findDuplicate(nums):
    slow = fast = nums[0]
    # Find meeting point
    while True:
        slow = nums[slow]
        fast = nums[nums[fast]]
        if slow == fast:
            break
    
    # Find duplicate
    slow = nums[0]
    while slow != fast:
        slow = nums[slow]
        fast = nums[fast]
    
    return slow
```

### Must-Do Problems
1. Linked List Cycle (141) - Detect cycle
2. Linked List Cycle II (142) - Find cycle start
3. Find the Duplicate Number (287) - Floyd on array
4. Happy Number (202) - Detect cycle in digit squares

### Resources
- [Floyd's Algorithm Explanation](https://www.geeksforgeeks.org/floyds-cycle-finding-algorithm/)

---

## 🎯 Priority Problem List (25 Must-Dos)

| # | Problem | Pattern | Difficulty |
|---|---------|---------|------------|
| 1 | Two Sum II (167) | Two Pointers | Easy |
| 2 | Container with Most Water (11) | Two Pointers | Medium |
| 3 | Longest Substring (3) | Sliding Window | Medium |
| 4 | Minimum Size Subarray (209) | Sliding Window | Medium |
| 5 | Jump Game (55) | Greedy | Medium |
| 6 | Merge Intervals (56) | Greedy | Medium |
| 7 | Climbing Stairs (70) | DP | Easy |
| 8 | House Robber (198) | DP | Medium |
| 9 | Coin Change (322) | DP | Medium |
| 10 | Longest Common Subsequence (1143) | DP | Medium |
| 11 | Unique Paths (62) | DP | Medium |
| 12 | Maximum Subarray (53) | Kadane/Sliding | Easy |
| 13 | Binary Tree Inorder (94) | Tree | Easy |
| 14 | Maximum Depth (104) | Tree | Easy |
| 15 | Diameter of Tree (543) | Tree (Post-order) | Easy |
| 16 | Lowest Common Ancestor (236) | Tree | Medium |
| 17 | Subarray Sum Equals K (560) | Prefix Sum | Medium |
| 18 | Product Except Self (238) | Prefix Product | Medium |
| 19 | Linked List Cycle (141) | Floyd | Easy |
| 20 | Find Duplicate Number (287) | Floyd | Medium |
| 21 | Best Time to Buy Stock (121) | Sliding | Easy |
| 22 | Word Break (139) | DP | Medium |
| 23 | Max Path Sum (124) | Tree (Post-order) | Hard |
| 24 | Edit Distance (72) | DP | Hard |
| 25 | Gas Station (134) | Greedy | Medium |

---

## 💡 Learning Strategies

### The 3-Pass Method for Reading Problems

**Pass 1: Keyword Scan (30 seconds)**
- Read title and description
- Look for trigger words: "sorted", "contiguous", "cycle", "maximize"
- Guess the pattern

**Pass 2: Template Review (2 minutes)**
- Go to the pattern template
- Map the template structure to your problem

**Pass 3: Solution Analysis (5 minutes)**
- Read the solution
- Highlight lines matching the template vs. unique lines

### Time-Boxing Guidelines

| Problem Difficulty | Initial Attempt | Before Looking at Solution |
|-------------------|-----------------|---------------------------|
| Easy | 10 minutes | 15 minutes |
| Medium | 15 minutes | 25 minutes |
| Hard | 20 minutes | 40 minutes |

### Spaced Repetition Schedule

- **Day 0:** First solve
- **Day 2:** Re-solve without looking
- **Day 7:** Review the pattern
- **Day 14:** Speed solve (under time pressure)

---

## 🔗 Complete Resource Links

### Visualization Tools
- [VisuAlgo](https://visualgo.net) - Best for algorithms visualization
- [DP Visualizer](https://dpvizu.com) - Dynamic programming state visualization
- [Algorithm Visualizer](https://algorithm-visualizer.org/) - Interactive algorithm demos

### Pattern Guides
- [LeetCode Patterns (GitHub)](https://github.com/nandini-gangrade/LeetcodePatterns) - Pattern-based problem organization
- [How to Identify DSA Patterns](https://leetcode.com/discuss/post/7882581/how-to-identify-which-dsa-pattern-to-use-f33w/) - Decision tree for pattern selection
- [Blind 75 List](https://leetcode.com/discuss/general-discussion/460599/blind-75-leetcode-questions) - Curated list of important problems

### Problem Collections
- [Practicing Leetcode Problems (GitHub)](https://github.com/ramahasiba/Practicing_Leetcode_Problems) - Comprehensive problem repository
- [LeetCode Explore](https://leetcode.com/explore/) - Official LeetCode learning paths
- [NeetCode Roadmap](https://neetcode.io/roadmap) - Structured DSA roadmap

### Theory & Explanations
- [GeeksforGeeks DSA](https://www.geeksforgeeks.org/data-structures/) - Detailed algorithm explanations
- [CP Algorithms](https://cp-algorithms.com/) - Competitive programming algorithms

---

## 📈 Progress Tracker

Copy this table to track your progress:

```
| Problem | Pattern | Date Started | Date Solved | Revisited (Day 2) | Mastered |
|---------|---------|--------------|-------------|-------------------|-----------|
| 167     | 2Ptr    |              |             |                   | ☐ |
| 11      | 2Ptr    |              |             |                   | ☐ |
| 3       | SW      |              |             |                   | ☐ |
| 209     | SW      |              |             |                   | ☐ |
| 55      | Greedy  |              |             |                   | ☐ |
| 56      | Greedy  |              |             |                   | ☐ |
| 70      | DP      |              |             |                   | ☐ |
| 198     | DP      |              |             |                   | ☐ |
| 322     | DP      |              |             |                   | ☐ |
| 1143    | DP      |              |             |                   | ☐ |
```

---

## ⚡ Quick Reference Card

### When You See a Problem, Ask:

1. **Is the array sorted?** → Two Pointers (opposite direction)
2. **Need subarray/substring?** → Sliding Window
3. **Looking for overlapping subproblems with optimal solution?** → DP
4. **Can you make a locally optimal choice?** → Greedy
5. **Need range sum queries?** → Prefix Sum
6. **Working with linked list cycles?** → Floyd's Algorithm
7. **Tree path or ancestor question?** → DFS with Post-order
8. **Level-related tree question?** → BFS

### Common Mistakes to Avoid

- ❌ Jumping to code before identifying pattern
- ❌ Using DP when greedy works (check if local optimal works)
- ❌ Forgetting to handle edge cases (empty arrays, single elements)
- ❌ Not optimizing space (2D DP when 1D works)
- ❌ Using recursion for deep trees (stack overflow risk)

---

## 🎓 Final Advice

**Remember:** 
- Understanding 30 problems deeply > solving 100 problems superficially
- Each problem should teach you a pattern you can apply to 10 others
- The goal is pattern recognition, not memorization
- Revisit problems after 2-3 days to solidify learning

**Good luck with your DSA journey! 🚀**
```

To use this Markdown file:

1. **Copy** all the content above
2. **Save** it as `DSA_Study_Plan.md`
3. **Open** with any Markdown viewer (VS Code, Obsidian, Typora, or even GitHub)

The file includes:
- Complete study schedule
- Code templates for each pattern
- Curated problem lists
- Resource links
- Progress tracker template
- Quick reference cards