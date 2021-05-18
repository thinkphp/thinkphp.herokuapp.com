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

- John    [1,3.14,'Person',True],   ['orange','apple',20] Ringo
- 0       1                         2                     3

In code this can be defined as:

```
l1 = [1,3.14,'Person',True]
l2 = ['orange','apple',20]
root_list = ['John',l1, l2, 'Ringo']
```

When the root_list is printed, we get:
['John',[1,3.14,'Person',True], ['orange','apple',20], 'Ringo']

Note the square brackets inside the outer square brackets indicating nested lists.
We can of course also nest Tuples in lists and lists in Tuples. For example, they
following structures shows Tuples (the ovals) hold references to Lists(rectangles)
and vice versa:

```
t1 = (1, 'John',3.14)
l1 = ['John','Diaz']
l2 = [t1, l1]
t2 = (l2, 'apple')
print(t2)
```
which produces:
- ([(1, 'John', 34.5), ['Smith', 'Jones']], 'apple')

### List Constructor Function

The List() function can be used to construct a list from an iterable; This
means that it can construct a list from a Tuple, a Dictionary or a Set. It can
also construct a list from anything that implements the iterable protocol.
The signature of the list() function is:

- list(iterable)


For example:

- vowelTuple = ('a','e','i','o','u')
- print(list(vowelTuple))

which produces:
- ['a','e','i','o','u']

### Accessing Elements from a List

You can access elements from a list using an index (within square brackets).
The index returns the object at that position, for example:

list1 = ['John','Paul','George','Ringo']
print(list1[1])

This will print out the element at index 1 which is Paul (lists are indexed from
ZERO si the first element is the zeroth element).

If you use a negative index such as -1 then the index is reversed so an index
of -1 starts from the end of the list (-1 returns the last element, -2 the second
to last, etc).

It is possible to extract a slice (or a sublist) from a list. This is done
by providing a starting and end end index to within the square brackets separated
by a colon. For example [1:4] indicates a slice starting at oneth element and
extending up to (but not including) the fourth element. If either of the indexes
is missed for a slice then that indicates the start or end of the list respective.

The following illustrates some of these ideas:

```
list1 = ['John','Paul','George','Ringo']
print('list1[1]:', list1[1])
print('list1[-1]:', list1[-1])
print('list1[1:3]:', list1[1:3])
print('list[:3]:', list1[:3])
print('list[1:]:', list1[1:])

#which produces:

list1[1]: Paul
list1[-1]: Ringo
list1[1:3]: ['Paul', 'George']
list[:3]: ['John', 'Paul', 'George']
list[1:]: ['Paul', 'George', 'Ringo']
```

### Adding to a list

### Inserting into a list1

### List concatenation

### Remove from a list

### The pop() Method

### Deleting from  list


### List Methods

- append() adds an element at the end of the list.
- clear() removes all the elements from the list
- copy() returns a copy of the list
- count() returns the number of elements with specified value
- extend() adds the elements of the list, to the end of the current list
- index() returns the index of the first element with the specified value
- insert() adds an element at the specified position
- pop() removes an item at the specified position
- remove() removes an item with a specified value
- reverse() reverses the order of the list
- sort() sorts the list
