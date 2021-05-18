---
layout: post
disqus: n
title: Collections Python
---

Earlier in this book we looked at some Python built-in types such as string,
int, float, bools and complex. These are not the only built-in types in Python;
another group of built-in types are collectively known as collection types.
This is because they represent a collection of other types (such as a collection
of string, or integers).

A collection is a single object representing a group of objects (such as a list or
dictionary). Collections may also be referred to as containers (as they contain other
objects). These collection classes are often used as the basis for more complex
or application specific data structures and data types.

These collection types support various types of data structures (such as lists and maps)
and ways to process elements within those structures. This chapter introduces
the Python Collection types.

There are four classes in Python that provides container like behaviour; that
is data types for holding collections of other objects, these are:

- Tuples
- Lists (Lists hold a collection of objects that are ordered and mutable/changeable
  they are indexed and allow duplicate members.
- Sets
- Dictionary

# Lists

Lists are mutable ordered containers of other objects. They support all the features
of the Tuples but they are mutable it is also possible to add elements to a List,
remove elements and modify elements. The element in the list maintain their order
(until modified).

## Creating lists

Lists are created using square brackets positined around the elements that make up
the list. For example:

list1 = ['John','Paul','George','Ringo']

In this case we have created a list of four elements with the first element
being indexed from ZERO, we thus have:

John   Paul  George   Ringo
0      1     2        3


As with Tuples we can have nested lists and lists containing different types
of elements. We can create the following structure of nested Lists:

John    [1,3.14,'Person',True],   ['orange','apple',20] Ringo
0       1                         2                     3

In code this can be defined as:

l1 = [1,3.14,'Person',True]
l2 = ['orange','apple',20]
root_list = ['John',l1, l2, 'Ringo']

When the root_list is printed, we get:
['John',[1,3.14,'Person',True], ['orange','apple',20], 'Ringo']
