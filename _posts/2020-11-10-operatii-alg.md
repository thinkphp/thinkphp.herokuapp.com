---
layout: post
disqus: y
title: Operatiile pe care le efectueaza un algoritm
---

### Operatiile pe care le efectueaza un algoritm

In linii mari, operatiile pe care le efectueaza un algoritm se impart in trei mari categorii:

- Operatii de intrare/iesire
- operatii de atribuire
- operatii de decizie

#### 1. Operatii de intrare / iesire 

Am aratat ca orice algoritm lucreaza cu date de intrare si de iesire. Acestea pot fi citite si scrise.

Prin operatia de intrare (de citire) se intelege preluarea unei date de la un dispozitiv de intrare catre memoria interna a calculatorului, catre memoria RAM, adica catre
memoria rezervata pentru aceasta, adica in variabila. Dispozitivele de intrare pot fi tastatura, cel mai des utilizata), unitate de disk, etc.

In limbajul pseudocod vom folosi pentru citire operatia Citeste.

Prin operatia de iesire (scriere) se intelege preluarea unei date din memoriea interna , adica dintr-o variabila, si transeferul ei catre un dispozitiv de iesire. 
Dispozitivele de iesire pot fi: monitorul, imprimanta, etc.

Pentru scriere vom folosi operatia Scrie.

Deocamdata vom presupune ca dispozitivul de intrare este tastatura, iar cel de iesire este monitorul.

Sa analizam algoritmul de mai jos - scris in limbajul pseudocod - care citeste un numar intreg si-l tipareste pe ecran:

intreg a
citeste a
scrie a

Mai intai am declarat o variabila a, de tip intreg - adica are posibilitatea de a retine numere intregi. Urmeaza sa se efectueze operatia de citire
a variabilei a. Aceasta inseamna ca se asteapta introducerea de la tastatura a datei intregi. In cazul in care introducem numarul 8, variabila a va retine 8, daca introducem
10, variabila a va retine 10.
  
  | 8 |
  
  a
  
  La scriere apare pe monitor numarul 8 - continutul variabilei a.
