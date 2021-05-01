---
layout: post
disqus: n
title: String Python
---

In Python a string is a series, or sequence, of character in order. In this definition a character is anything you can type on thekeyboard in one keystroke, such as a letter
'a', 'b', 'c' or a number '1','2','3' or a special characters such as '\','#','$' etc. a space is also a character, altough it does not have a visible representation.

It should also be noted that strings are immutables. Immutable means that once a string has been created it cannot be changed. If you try to change a string you will in fact create a new string, containing whatever modifications you made, you will not affect the original stringin anyway; for the most part you can ignore this fact but it beans that if you try to get a substring or split a string you must remember to store the result - you will see later in this chapter.

To define the start and the end of a string we have used the single quote character ' thus all of the following are valid string:
'hello'
'hello world'
'Hello, Alexander!'
'to be or not to be that is the question!'

We can also define an empty string which has no characters in it (it is defined as a single quote followed immediately by a second quote with no gap between them). This is often used to initialise or reset a variable holding a reference to a string, for example.

some_string = ''

## Representing Strings

As stated above, we have used single quotes to define the start and the end of a string, however in Python single or double quotes can be used to define a string, thus both of the following are valid:
'hello String'
"hello String"

In Python these forms are exactly the same, although by convention we default to using single quotes. This approach is often referred to as being more Pythonic (which implies it is more the convention used by experienced Python programmers), but the language does not enforce it.

You should note however, you cannot mix the two styles of start and the end strings, that is you cannot start a string with a single quote and end a string with a double quote, thus the following are both illegal in Python:
'Hello, String"
"Hello, String'

A third alternative is the use of triple quotes, which might at first seem a bit unwieldy, but they allow a string to support multi-line strings, for example:

```python
z = """
Welcome
   to the
       jungle!
"""
```
Which will print out:

Welcome
    to the
       jungle!

## What Type is String

It is often said that Python is untyped; but this is not strictly true - as was stated in an earlier chapter
it is a dinamically typed language with all data having an associated type.

The type of an item of data (such as a string) determines what it is legal to do with the data and what the effect of various actions will be. For example, what the offect of using a '+' operator is will depend on the types involved; if they are numbers then the plus operator will add them together; if however strings are involved then the strings will be concatenated (combinated) together.

It is possible to find out what type a variable currently holds using a built-in type() function. This function takes a variable name and will return the type of the data held by the variable, for example:
   my_variable = "Cube"
   print(type(my_variable))
   The result of executing of these two lines of code is the output:
   <class 'str'>

This is a shorthand for saying that what is held in my_variable is currently a class(type) of string (actually string is a class in Python supports idea from Object Oriented Programming such as classes and we will encounter them later in this chapter)

## What can you do with Strings?

## Hints on Strings
