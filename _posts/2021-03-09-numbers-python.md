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

The term floating point is derived from the fact
that there is no fixed number of digits before and after the decimal point; that is, the decimal point can float.

Operation on floating point numbers such as addition, subtract, multiplication, etc, will generate new real numbers which must also be represented. It is also much harder to ensure that
the results are correct as potentially very small or very large fractional parts may be involved. Indeed, most floating-point numbers are actually
represented as approximations. This means that one of the challanges in handling floating-point numbers is in ensuring that approximations lead to resonable results. If this is not done appropriately, small discrepancies in the approximations can snowball to the point where the final results become meaningless.

As a result, most computer programming languages treat such as 4 as being different from real numbers such as 4.0000004.

Complex numbers are an extension of real numbers in which all numbers are expressed as a sum of a real part and an imaginary part. Imaginary numbers are real multiples of the imaginary unit (the square root of -1), where the imaginary part is often written in mathematics using an "i", while in engineering it is often written using a "j".

Python has built-in support for complex numbers, which are written using the engineering notation; that is the imaginary part with a j suffix, e.g. 3 + 3j.

## Integers.

## Converting to Ints.

## Floating-Point Numbers.

## Converting to Floats

## Converting an Input String into a Floating Point Number.

## Complex Number

## Boolean Values

## Arithmetic Operators
