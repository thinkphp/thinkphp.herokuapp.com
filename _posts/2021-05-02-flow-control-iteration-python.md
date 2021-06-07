---
layout: post
disqus: n
title: Flow of Control using Loop/Iteration statement Python
---

## Introduction

In this section we will look at the while loop and the for loop available in Python. These loops are used to control the repeated execution of selected statements.

### While loop

The while loop exists in almost all programming languages and is used to iterative or repeat
one or more code statements as long as the test condition(expression) is True. The iteration construct is usually used when the number of times we need to repeat  the block of code to execute is not known. For example, it may need to repeat until some solution is found orthe user enters a particular value.

                         START
                          ||
                          ||            if condition is False
              -------> condition --------------------------> STOP
              |            ||
              |            || if condition is True
              |          PROCESS     
              |            ||
              -------------            
The Python while loop has the basic form:

```
while <test-condition-is-True>
      statement or statements
```

As shown both in the diagram and can be inderred from the code; while the test condition/expression is True then the statement or block of statements in the while loop will be executed.
Note that the test is performed before each iteration, including the first iteration; therefore, if the condition fails the first time around the loop the statement or block of statements may never executed at all.

As with the If statement, indentation is key here as the statements included in the while statement are determined by indentation. Each statement that is indented to the same level after the while condition is part of the while loop.

However, as soon as a statement is no longer following the while block; then it is no longer part of the while loop and its execution is no longer under of control of the test-condition.

The following illustrates an example while loop in Python:

```python
cond = 0
print("Starting")
while count < 10:
      print(count, ' ', end = '') #part of the while loop
      count += 1 #also, part of the while loop
print() #not part of the while loop
print("Done")            
```

In this example while some variable count is less than the value 10 the while loop will continue to iterate(will be repeated). The while loop itself contains two statements; one prints out the value of count variable while the other increments count (remember count +=1 is equivalent to count = count + 1).

We have used the version print() that does not print carriage return when it prints out a value (this is indicated by the end = '' option passed to the print() function).

The result of running this example is:
```
Starting
0 1 2 3 4 5 6 7 8 9
Bye
```

As you can see the statements printing the starting and done messages are only run once. However, the statement printing out the count variable is run 10 times (printing out the values 0 - 9).

Once the value of count is equal to 10 then the loop finishes (or terminates).

Note that we needed to initialise the count variable before the loop. This is because it needs
to have a value for the first iteration of the while loop. That is before the while loop does
anything the program needs to already know the first value of count so that it can perform that very first test. This is a feature of the while loops behavior.

### For Loop

In many cases we know how many times we want to iterative over one or more statements (as indeed we did in the previous section). Although the while loop can be used for such situations, the for loop is a far more concise way to do this. It typically also clearer to another programmer that the loop must iterate for a specific number of iterations.

The for loop is used to step a variable through a series of values until a given test is met. The behavoir of the for loop is illustrated in below:

                             Start
                              |
                              | for each item in sequance         
                              |
                              |
          |----------------->LAST item reached?--------->STOP
          |                    |
          |                    | NO
          |                    |
          |                   \ /
          --------------------<-PROCESS  

This flow chart shows that some sequence of values (for example all integer values between 0 and 9) will be used to iterate over a block of codeto process. When the last item in the sequence has been reached, the loop will terminate.

Many languages have a loop for of the form:
```
for i = from 0 to 10
    statement or statements
```

In this case a variable i would take the values 0, 1, 2, 3, 4, 5, 6 up to 10.

In Python the approach is slightly different as the values from 0 up to 10 are represented by a range. This is actually a function that will generate the range of valuesto be used as the sequence in the loopfor. THis is because the Python for loop is very flexible and can loop over not only a range of integer values but also a set of values held in data structures such a list of integers or strings. We will return to this features of the for loop when we look at collections/containers of data in later chapter.

The format of the Python for loop when using a range of values is:

```Python
for <variable-name> in range(...):
    statement
    statement
```

An example is shown below which equates to the while loop we looked at earlier:

```python
# loop over a set of values in a range:
print("Print out the values in a range:")
for i in range(0, 10):
    print(i, ' ', end = '')
print()
print("Done!")    
```

when we run this code, the output is:

```
Print out values in a range
0 1 2 3 4 5 6 7 8 9
Done
```

As can be seen from the above; the end result is that we have generated a for loop that produces the same set of values as the earlier while loop. However,

- the code is more concide
- it is clear we are processing a range of values from 0 to 9 (note that it is up to but not including the final value) and
- we did not need to define this loop first variable.

For these reasons for loops are more common in programms in general than while loops.

One thing you might notice though is that in the while loop we are not constrained to incrementing the count variable by one (we just happened to do this). For example, we could have decided to increment count by 2 each time round the loop (a very common idea). In fact the range allow us to do exactly this; a third argument that can be provided to the range functionin the value to increment the loop variable by each time round the loop, for example:

```python
# Now use values in a range but increment by 2
print('Print out values in a range with an increment of 2')
for i in range(0, 10, 2):
print(i, ' ', end='')
print()
print('Done')

# When we run this code, the output is:
Print out values in a range with an increment of 2
0 2 4 6 8
Done
```
