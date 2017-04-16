---
layout: post
disqus: y
title: Does robot moves circular
---

Given a sequence of moves for a robot, check if the sequence is circular or not. A sequence of moves is circular if first and last positions of robot are same. A move can be on of the following.
    
    G - Go one unit
    L - Turn left
    R - Turn right

**Input:**

The first line of input contains an integer T denoting the number of test cases.
The first line of each test case is a String in capital letter, sequence of moves consisting only {R,G,L}.

**Output:**

Print Given sequence of moves is circular if first and last positions of robot are same. else Given sequence of moves is NOT circular.

**Constraints:**

1 ≤ T ≤ 50
1 ≤ size of string ≤ 200

**Example:**

**Input:**
3
GLGLGLG
GLLG
GGGGL

**Output:**
Circular
Circular
Not Circular

```c++
#include <stdio.h>
int main() {

    int i,T,x,y;
    char path[201],dir, move;

    scanf("%d", &T);        

    while(T--) {
 
      scanf("%s", path);

      //firstly the robot faces north
      dir = 'N';

      x = y = 0;      

      for(i = 0; path[i]!='\0'; i++) {

          move = path[i];

         //turn left
         if(move == 'L') {
 
           switch(dir) {

                  case 'N': dir = 'W';break;
                  case 'S': dir = 'E';break;
                  case 'W': dir = 'S';break;
                  case 'E': dir = 'N';break;
           }     
     
         //turn right
         } else if(move == 'R') {

           switch(dir) {

                  case 'N': dir = 'E';break;
                  case 'S': dir = 'W';break;
                  case 'W': dir = 'N';break;
                  case 'E': dir = 'S';break;
           }     

         //go one unit
         } else {

           switch(dir) {

                  case 'N': y += 1;break;
                  case 'S': y -= 1;break;
                  case 'W': x -= 1;break;
                  case 'E': x += 1;break;
           } 
         }   

      }

         if(x == 0 && y == 0) {
            printf("Circular");
         }  else {
            printf("Not Circular");
         }


      printf("\n");
    }

     

return(0);
}
```
