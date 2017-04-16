---
layout: post
disqus: y
title: Does robot moves circular
---

Given a sequence of moves for a robot, check if the sequence is circular or not. A sequence of moves is circular if first and last positions of robot are same. A move can be on of the following.
    
    G - Go one unit
    L - Turn left
    R - Turn right

**Input:**

The first line of input contains an integer T denoting the number of test cases.
The first line of each test case is a String in capital letter, sequence of moves consisting only {R,G,L}.

**Output:**

Print Given sequence of moves is circular if first and last positions of robot are same. else Given sequence of moves is NOT circular.

**Constraints:**

1 ≤ T ≤ 50
1 ≤ size of string ≤ 200

**Example:**

**Input:**
3
GLGLGLG
GLLG
GGGGL

**Output:**
Circular
Circular
Not Circular
