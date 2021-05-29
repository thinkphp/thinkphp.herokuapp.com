---
layout: post
disqus: n
title: Numbers Python
---

# Introduction

In this chapter we will explore the different way that numbers can be represented by built-in types in Python. We will also introduce the Boolean type used to represent True and False. As part of this discussion we will also
look at both numeric and assignment operators in Python. We will conclude by introducing the special value known
as None.

## Type of Numbers

There are three types used to represent numbers in Python; these are integers types, floating points numbers and complex numbers.
This begs the quention why? Why we have different ways of representing numbers; after all humans can easily work with the number 4 and the number 4.0 and do not need
completely different approaches to writting them (apart from '.' of course).

This actually comes down to efficiently in terms of both the amount of memory needed to represent a number and the amount of processing power needed to work with the number. In essence integers are simpler to work with and can take up less memory than real numbers. Integers are whole numbers that do not need to have a fractional element. When two integers are added, multiplied or subtracted they will always generate another integer number.

In Python real numbers are represented as floating point numbers or floats. These can contain a fractional part (the bit after the decimal point). Computers can best work with integers(actually of course only really 1s or 0s). They therefore need a way to represent a floating point or real number. Typecally this involves representing the digits before and after the decimal point.
