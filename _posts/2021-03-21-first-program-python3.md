---
layout: post
disqus: n
title: First Program Python 3
---

## Ce este un algoritm?

### Definition1:

A set of instructions, or rules that, start with initial data, solves a class of problems using precise operations, executed mechanically, without creative human intervention.

To qualify as an algorithm, the set of instructions should have some properties:

- preciseness - or non-ambiguity. Each step must be non-ambiguous and executable without creative intervention.
- generality - it should solve a class of problems, not just one particular problem.
- finiteness - the algorithm must finish in a finite amount of time.
- correctness - the end result should be correct for all inputs.

A program is a sequence of instructions that specifies how to perform a computation. The computation might be something mathematical, such as solving a system of equations or finding the rootof a polynomial, but it can also be a symbolic computation such as searching or replacing text in a document or something graphical, like processing an image or playing a video.

The details look different in different languages, buta few instructions appear in just about every language:

Input - get the data from keyboard, a file, the network, or some other device

output - display the data on the screen, save it in a file, sent it over the network

math - perform basic mathematical operations like addition or multiplication

conditional execution - check for certain conditions and run the appropriete code

repetition - perform some action repeatedly, usually with some variation.

Traditionally, the first program you right in a new language is called "Hello World!" because all it does is display the words "Hello worlds!". In Python it looks like
this:
```python
>>> print("Hello, world!")
```

This is an exampleof a print statement, althought it doesn t actually print anything on paper. It display a result on the screen. In this case, the result is the words: Hello, world!

The quotations marks in the program mark the beginning and the end of the text to be displayed; they do not appear in the result. The parentheses indicate that print is a function.

## Values and Types

A value is one the basic things a program works with, a letter or a number. Some values we have seen so far are 8, 23.34 and 'Hello, world!'

The values belong to different types:

- 8 is an integer
- 23.34 is a floating-point number
- 'hello world' is a string
If you are not sure what type a value has, the interpreter can tell you:

```python
>>> type(8)
<class 'int'>
>>> type(23.34)
<class 'float'>
>>> type('Hello, World!')
<class 'str'>
```

In these results, the word class is used in the sense of a category; a type is a category of values.

Not surprisingly, integers belong to the type int, strings to the type str and floating point numbers belong to the float type.

What about values like '8' and '23.3'. They look like numbers, but they are in the quotations marks like strings:

```python
>>> type('2')
<class 'str'>
>>> type('42.0')
<class 'str'>
```
