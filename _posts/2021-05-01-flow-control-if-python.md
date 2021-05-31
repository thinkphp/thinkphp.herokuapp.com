---
layout: post
disqus: n
title: Flow of Control IF statement Python
---

## Introduction

In this chapter we are going to look at the if statement in Python. This statement is used to control the flow of execution
within a program based on some condition. These conditions represent some choice point that will be evaluated to True or False. To perform this evaluation it is common to use a comparison operator (for example to check to see if the temperature is greater than some threshold). In many cases these comparisons need to take into account serveral values and in these situations logical operators can be used to combine two or more comparison expressions together. This chapter first introduces comparison and logical operators before discussing the if statement itself.

### Comparison operators

Before exploring if statements we need to discuss comparison operators. These are operators that return Boolean Values. They are key to conditional elements of flow of control statements such as if.

A comparison operator is an operator that performs some form of test and returns True or False.

These are operators that we usein everyday life all the time. For example, do I have enough money to buy lunch, or is this shoe in my size, etc. In Python there are a range of comparison operators represented by typically one or two characters. These are:

operator       Description
==  3 == 3     Tests if two values are equal.
!=  3 != 3     Tests if two values are not equal to each other.
<   3 < 3      test if the left hand value is less than righ hand.
>   3 > 6      test if the left hand value is greater than right hand.
<=  1 <= 33    test if the left hand value is less or equat than righ hand.
>=  1 >= 11    test if the left hand value is greater or equal than righ hand.

### Logical operators

In addition to comparison operators, Python also has logical operators. Logical can be used to combined Boolean expressions together. Typically, they are used with comparison operators to create more complex conditions. Again, we use every day for example we might consider whether we can afford an ice cream and whether we will be having our dinner soon, etc.

There are three logical operators in Python these are listed below:

Operator:   Description
and         Returns True if both left and right are True.
or          Returns True if either left or right is True.
not         Returns True if the value beind tested is False.


## The If Statement

### Working with an If Statement

### Else in an If Statement

### The Use of Elif

### Nesting If Statements

## If Expressions

## A note on True and False

## Hints

One thing to be very careful of in Python is layout.

Unlike language such as Java and C# the layout of your program
is part of your program. It determines how statements are associated together and how flow of control elements such as if
statements effect which statements are executed.
Also be careful with the If statement and its use of the ":" character. This character is key in separating out the conditional part of the If statement from the statements that will be executed depending upon whether the condition is True or False.

## Online Resources

## Exercises
