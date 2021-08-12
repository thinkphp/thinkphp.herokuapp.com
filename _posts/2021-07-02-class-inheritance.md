---
layout: post
disqus: n
title: Class Inheritance
---

1. Introduction

   Inheritance is a core feature of Object-Oriented Programming. It allows one class to inherit data or behaviour from another class and is one of the key ways in which reuse is enabled within classes. This chapter introduces inheritance between classes in Python.

2. What is Inheritance?

   Inheritance allows features defined in one class to be inherited and reused in the definition of another class. For example, a Person class might have the attributes name and age. It might also have behaviour associated with a Person such as birthday().

   We might then decide that we want to have another class Employee
   and that employees also have a name and an age and will have birthday. However, in addition an Employee may have an employee
   ID attribute and a calculate_pay() behaviour.

   At this point we could duplicate the definition of the name and age attributes and the birthday() behaviour in the class Employee
   (for example by cutting and pasting the code between the two classes).

   However, this is not only inefficient; it may also cause problems in the futures. For example we may realize that there is a problem or bug in the implementation of birthday() and may correct it in the class Person; however, we may forget to apply the same fix to the class Employee.

   In general, in software design and development it is considered best practice to define something once and to reuse that something
   when required.

   In an object-oriented system we can achive that reuse of data or
   behaviour via inheritance. That is one class (in the case the Employee class) can inherit features from another class (in this case Person). This is shown pictorially below:

   Person

   name
   age
   birthday()


   Employee
   id
   calculate_pay()

   In this diagram the Employee class is shown as inheriting from then Person class. This means that the Employee class obtains all the data and behaviour of the Person class. It is therefore as though the Employee class has defined three attributes name, age and id and two methods birthday() and calculate_pay().

   A class that is defined as extending a parent class has the
   following syntax:

   ```python
   class SubClassName(BaseClassName):
         class-body
   ```
