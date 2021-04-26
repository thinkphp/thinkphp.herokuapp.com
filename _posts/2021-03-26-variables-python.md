---
layout: post
disqus: n
title: Variables Python
---

Variables are containers for storing data values.

Python has no command for declaring a variable.

A variable is created at the moment you first assign a value to it.

Rules for Python variables:
- a variable name must start with a letter or the underscore character
- a variable name cannot start with a number
- variable Names are case-sensitive.
- a variable name can only contain alpha-numeric characters and underscores (A-z, 0-9, _)

```python
>>> 7a = 2
  File "<stdin>", line 1
    7a = 2
     ^
SyntaxError: invalid syntax
>>> more@ = 3
  File "<stdin>", line 1
    more@ = 3
          ^
SyntaxError: invalid syntax

>>> class = 2
  File "<stdin>", line 1
    class = 2
          ^
SyntaxError: invalid syntax
```


Example:
```python
# a is of type int
a = 10
# b is of type str
# string variables can be declared either by using
# single or double quotes
b = "George"
# c is of type str
c = 'Diaz'
# d is of type float
d = 1.414243
# we can assign the same value to multiple variables in one Line
x,y,z = "Hello"
#we can assign values to multiple variables in one line.
x,y,z = 1,2,3
```

## Casting

If you want to specify the data of a variable this can be done with casting:

```python
# a will be '3'
a = str(3)
# b will be 3
b = int(3)
# c will be 3.0
c = float(3)
```

## Get The type

```python
x = 10
y = 'get the type'
z = 1.4534
print(type(x))
print(type(x))
print(type(z))
```

## Output Variables

- print statement is used often to output variables.
- to combine both text and variable, python usesthe + character.
```python
x = "world! "
print("Hello, " + world)
```
