---
layout: post
disqus: y
title: Match Words
---
Problem 6.2 page 320. Basic C Programming. Chapter: Dynamic Programming.

Dans un fichier texte se trouve divisé en plusieurs lignes de mots composés alphabet anglais minuscules, 
séparés par un espace et / ou à la fin des marquages de lignes. Ecrire un programme pour déterminer la plus longue 
séquence de mots dans le texte, dans l'ordre d'apparition dans le texte donné construit
de sorte que, pour deux mots de suite, les deux dernières lettres du premier mot pour coïncider 
avec les deux premières lettres du mot suivant.

In a text file is found, divided into several lines consisting of words lowercase English alphabet, 
separated by a space and / or end of line markings. Write a program to determine the longest sequence of words 
in the text, in the order that they appear in the text given built
so that, for any two words in a row, the last two letters of the first word to coincide with the
first two letters of the next word.

```c++
int matchWords(String s1, String s2) {

    return s1[strlen(s1)-2] == s2[0] && s1[strlen(s1)-1] == s2[1];   
}

//main function
int main() {

    //firstly we read the words in an array
    FILE *f = fopen(FIN, "r");
    //firstly we read the words in an array
    FILE *fout = fopen(FOUT, "w");


         //while not end of file do
         while(!feof(f)) {

                //read from file
                fscanf(f, "%s", &v[ n++ ]);
         }        

         //close the handler
         fclose(f);

    L[ n - 1 ] = 1;
    
    iMax = n - 1;
    
    next[ n - 1 ] = n;      

    for(i = n - 2; i >= 0; i--) {

        L[ i ] = 1;
        
        next[ i ] = n;

        for(j = i + 1; j < n; j++) {
            
            if(matchWords(v[i], v[j])) {

                L[ i ] = 1 + L[ j ];  

                next[ i ] = j;
            } 

            if(L[ i ] > L[ iMax ]) iMax = i;
        }         
    }

    fprintf(fout, "Max Length -> %d\n", L[iMax]);

    while( iMax != n ) {

       fprintf(fout, "%s\n", v[ iMax ]);

       iMax = next[ iMax ];
    }

 return(0);
}
```
