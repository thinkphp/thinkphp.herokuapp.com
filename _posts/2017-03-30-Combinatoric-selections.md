---
layout: post
disqus: y
title: Combinatoric selections
---

Project Euler.
-------------

#### Problem 53 (solved in Python language).

There are exactly ten ways of selecting three from five, 12345:

123, 124, 125, 134, 135, 145, 234, 235, 245, and 345

In combinatorics, we use the notation, 5C3 = 10.

In general,
nCr = n!/r!(n-r)! ,where r <= n, n! = nx(n-1)x...x3x2x1, and 0! = 1.

It is not until n = 23, that a value exceeds one-million: 23C10 = 1144066.

How many, not necessarily distinct, values of  nCr, for 1 <= n <= 100, are greater than one-million?

```python

fact_c = { 0: 1, 1: 1 }

def fact_rec(n): 

    return fact_c.has_key(n) and fact_c[ n ] or fact_c.setdefault(n, n * fact_rec(n-1))

def fact_it(n):

    p = 1

    for i in range(1, n + 1):

        p = p * i

    return p  

def comb(n, r):

    return (fact_rec(n) / (fact_rec(r) * fact_rec(n - r)))

answer = len([(x,y) for x in range(1, 100+1) for y in range(x) if comb(x,y) > 1000000])

print answer
```
