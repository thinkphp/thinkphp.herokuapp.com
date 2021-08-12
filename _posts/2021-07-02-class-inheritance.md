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
