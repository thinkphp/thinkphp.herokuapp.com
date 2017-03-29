## Project Euler

### Coded triangle numbers

#### Problem 42 Solved in Python using Generators. Answer: 162

The nth term of the sequence of triangle numbers is given by, tn = 1/2n(n+1); so the first ten triangle numbers are:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we form a word value. For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a triangle number then we shall call the word a triangle word.

Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, how many are triangle words?

```python

from functools import wraps
from os.path import dirname, join

def string_to_num(string):

    from string import ascii_lowercase as alpha

    return sum([alpha.index(x)+ 1 for x in string])

def load_words():

    with open(join(dirname(__file__), "p042_words.txt")) as f:
    
         words = f.read().strip("\n").split(",")

    return [x.lower().strip("\"") for x in words]   

def triangles():

    n = 1

    while True: 

        t = (n * (n + 1)) // 2

        n = n + 1 

        yield t

list = []

def getTriangle(gen, n):

    for i in xrange(1, n):  

        list.append(gen.next())

    return list  

def isTriangle(num):

   allTriangles = getTriangle(triangles(), 201)
    
   if num in allTriangles:

      return True

   else:

      return False    

def solution():

    return sum(1 for x in load_words() if isTriangle(string_to_num(x)))
    
if __name__ == '__main__':

   print(solution())
   
   ```
