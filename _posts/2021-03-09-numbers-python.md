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

All integers values, no matter how big or how small are represented by the integral type in Python. For example:
```
x = 1
print(x)
print(type(x))
x = 10000000000000000000000000001
print(x)
print(type(x))
# if this code is run then the output will show
# that both numbers are of type int
1
<class 'int'>
10000000000000000000000000001
<class 'int'>
```

## Converting to Ints.

It is possible to convert another type into an integer using int() function. For example, if you want to convert a String into an Int(assuming the string contains an integer number) then we can do this using the int() function

```python
total = int('100')
```

This can be useful when used with the input() function.

The input() function always returns a string. If you want to ask the user to input an integer number, then we will need to convert the string returned from the input() function into an int. We can do this by wrapping the call to the input() function in a call to the int() function, for exaple:

```python
age = int(input("Please enter your age:"))
print(type(age))
print(age)
# Running this gives:
Please enter your age: 21
<class 'int'>
21
```

The function int() can be used also to convert a floating-point number into an int, par example:

```
i = int(1.0)
```

## Floating-Point Numbers.

Real Numbers, or floating-point numbers, are represented in Python using the IEEE 754-double precision binary floating-point number format; for the most part you do not need to know this, but it is something you can look up and read if you wish.

The type used to represent a floating-point number is called float.

Python represents floating point number using a decimal point to separate the whole part from the fractional part of the number, for example:

```
exchange_rate = 1.84
print(exchange_rate)
print(type(exchange_rate))
# this produces output indicating that we are storing the number 1.84 as a floating point number.
```

## Converting to Floats

As with integers it is possible to convert other types such as an int or a string into a float. this is done using float() function.

```python
int_value = 1
string_value = '1.5'
float_value = float(int_value)
print('int value as a float:', float_value)
print(type(float_value))
float_value = float(string_value)
print('string value as a float:', float_value)
print(type(float_value))

# the output from this code snippet is:
int value as a float: 1.0
<class 'float'>
string value as a float: 1.5
<class 'float'>
```

## Converting an Input String into a Floating Point Number.

As we have seen the input() function returns a string; what happens if we want the user to input a floating point number or real number? As we have seen above, a string can be converted into a floating point number using the float() function and therefore we can use this approach to convert an input from the user into a float:

```python
exchange_rate = float(input("Please enter the exchange rate to
use: "))
print(exchange_rate)
print(type(exchange_rate))
#using this we can input the string 1.83 and convert it into a floating-point number.
Please enter the exchange rate to use: 1.83
1.83
<class 'float'>
```

## Complex Number

Complex Numbers are Python third type of built-in numeric type. A complex number is defined

## Boolean Values

## Arithmetic Operators
