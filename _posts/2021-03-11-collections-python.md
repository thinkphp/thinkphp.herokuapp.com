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

You can add an item to a list using the append() method of the List class(this
changes the actual list; it does not create a copy of the list). The syntax of the
method is:

```
<alist>.append(<object>)
```

As an example, con  sider the following list of strings, to which we append a fifth
string:

```python
list1 = ['John', 'Paul', 'George', 'Ringo']
list1.append('Pete')
print(list1)
this will generate the output:
['John', 'Paul', 'George', 'Ringo', 'Pete']
```

You can also add all the items in a list to another list. There are several options
here, we can use the extend() method that will add the items passed to it to the
end of the list or we can use += operator which does the same thing:

```python
list1 = ['John', 'Paul', 'George', 'Ringo', 'Pete']
print(list1)
list1.extend(['Albert', 'Bob'])
print(list1)
list1 += ['Ginger', 'Sporty']
print(list1)
The output from this code snippet is:
['John', 'Paul', 'George', 'Ringo', 'Pete']
['John', 'Paul', 'George', 'Ringo', 'Pete', 'Albert', 'Bob']
['John', 'Paul', 'George', 'Ringo', 'Pete', 'Albert', 'Bob',
'Ginger', 'Sporty']
```

Which approach you prefer to use is up to you.
Note that strictly speaking both extend() and += take an iterable.

### Inserting into a list1

You can also insert elements into an existing list. This is done using the insert()
method of the List class. The syntax of this method is:

```
<list>.insert(<index>, <object>)
```

The insert() method takes an index indicating where to insert the element and an object to be
inserted.

For example, we can insert the string 'paloma' in between the Zeroth and oneth item
in the following list of names:

```
a_list = ['Adele', 'Madonna', 'Cher']
print(a_list)
a_list.insert(1, 'Paloma')
print(a_list)
#The result is:
['Adele', 'Madonna', 'Cher']
['Adele', 'Paloma', 'Madonna', 'Cher']
```

In other words, we have inserted the string 'Paloma' into the index position 1
pushing 'Madonna' and 'Cher' up one in the index within the List.

### List concatenation

It is possible to cancatenate two lists together using the concatenation operator
'+':

```
list1 = [3, 2, 1]
list2 = [6, 5, 4]
list3 = list1 + list2
print(list3)
#generates
[3, 2, 1, 6, 5, 4]
```

### Remove from a list

We can remove an element from a List using the remove() method. The syntax for this
method is:

```
<list>.remove(<object>)
```

This will remove the object from the list; if the object is not in the list, then
will generated an error by Python.


```
another_list = ['Gary', 'Mark', 'Robbie', 'Jason', 'Howard']
print(another_list)
another_list.remove('Robbie')
print(another_list)
#The output from this is:
['Gary', 'Mark', 'Robbie', 'Jason', 'Howard']
['Gary', 'Mark', 'Jason', 'Howard']
```

### The pop() Method

The syntax of the pop() method is:

a.pop(index=-1)

It removes an element from the List; however, it differs from the remove()
method in two ways:
- it takes an index which is the index of the item to remove from the list rather
than the object itself.
- the method returns the item that was removed as its result.

An example of using pop() method is given below:

```
list6 = ['Once', 'Upon', 'a', 'Time']
print(list6)
print(list6.pop(2))
print(list6)
```

will generate:

- ['Once', 'Upon', 'a', 'Time']
- a
- ['Once', 'Upon', 'Time']

an overload of this method is just:

```
<list>.pop()
```

Which removes the last item in the list. For example:

```
list6 = ['Once', 'Upon', 'a', 'Time']
print(list6)
print(list6.pop())
print(list6)
```

with the output:

```
['Once', 'Upon', 'a', 'Time']
Time
['Once', 'Upon', 'a']
```

### Deleting from  list

It is possible to use the del keyword to delete elements from a list.

The del keyword can be used to delete a single element or a slice from a list.

To delete an individual element from a list use del and access the element via
its index:

```
my_list = ['A', 'B', 'C', 'D', 'E']
print(my_list)
del my_list[2]
print(my_list)
```

which outputs:

- ['A', 'B', 'C', 'D', 'E']
- ['A', 'B', 'D', 'E']

To delete a slice from within a list use the del keyword and the slice returned
from the list.

```
my_list = ['A', 'B', 'C', 'D', 'E']
print(my_list)
del my_list[1:3]
print(my_list)

```

which deletes the slice from index 1 up to index 3 (not including)

['A', 'B', 'C', 'D', 'E']
['A','D','E']



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

# Tuples

Tuples, along with Lists, are probably one of Python most used container types. They will present in almost any non-trivial Python program.
Tuples are an immutable ordered collection of objects; that is each element in a tuple has a
specific position (its index) and that position does not change over time. Indeed, it is Not
possible to add or remove from the tuple once it
has been created.
