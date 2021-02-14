word(determiner,a).
word(determiner,every).
word(noun,criminal).
word(noun,'big  kahuna  burger').
word(verb,eats).
word(verb,likes).

sentence(Word1,Word2,Word3,Word4,Word5):-
      word(determiner,Word1),
      word(noun,Word2),
      word(verb,Word3),
      word(determiner,Word4),
      word(noun,Word5).

find_sentences() :-
      sentence(A, B, C, D, E),
      write(A), write(' '), 
      write(B), write(' '), 
      write(C), write(' '), 
      write(D), write(' '), 
      write(E), write(' '), nl.

/*
toutes les phrases que l'on peut obtenir :

?- sentence(A,B,C,D,E).
A = D, D = a,
B = E, E = criminal,
C = eats ;

A = D, D = a,
B = criminal,
C = eats,
E = 'big  kahuna  burger' ;

A = a,
B = E, E = criminal,
C = eats,
D = every ;

A = a,
B = criminal,
C = eats,
D = every,
E = 'big  kahuna  burger' ;

A = D, D = a,
B = E, E = criminal,
C = likes ;

A = D, D = a,
B = criminal,
C = likes,
E = 'big  kahuna  burger' ;

A = a,
B = E, E = criminal,
C = likes,
D = every ;

A = a,
B = criminal,
C = likes,
D = every,
E = 'big  kahuna  burger' ;

A = D, D = a,
B = 'big  kahuna  burger',
C = eats,
E = criminal ;

A = D, D = a,
B = E, E = 'big  kahuna  burger',
C = eats ;

A = a,
B = 'big  kahuna  burger',
C = eats,
D = every,
E = criminal ;

A = a,
B = E, E = 'big  kahuna  burger',
C = eats,
D = every ;

A = D, D = a,
B = 'big  kahuna  burger',
C = likes,
E = criminal ;

A = D, D = a,
B = E, E = 'big  kahuna  burger',
C = likes ;

A = a,
B = 'big  kahuna  burger',
C = likes,
D = every,
E = criminal ;

A = a,
B = E, E = 'big  kahuna  burger',
C = likes,
D = every ;

A = every,
B = E, E = criminal,
C = eats,
D = a ;

A = every,
B = criminal,
C = eats,
D = a,
E = 'big  kahuna  burger' ;

A = D, D = every,
B = E, E = criminal,
C = eats ;

A = D, D = every,
B = criminal,
C = eats,
E = 'big  kahuna  burger' ;

A = every,
B = E, E = criminal,
C = likes,
D = a ;

A = every,
B = criminal,
C = likes,
D = a,
E = 'big  kahuna  burger' ;

A = D, D = every,
B = E, E = criminal,
C = likes ;

A = D, D = every,
B = criminal,
C = likes,
E = 'big  kahuna  burger' ;

A = every,
B = 'big  kahuna  burger',
C = eats,
D = a,
E = criminal ;

A = every,
B = E, E = 'big  kahuna  burger',
C = eats,
D = a ;

A = D, D = every,
B = 'big  kahuna  burger',
C = eats,
E = criminal ;

A = D, D = every,
B = E, E = 'big  kahuna  burger',
C = eats ;

A = every,
B = 'big  kahuna  burger',
C = likes,
D = a,
E = criminal ;

A = every,
B = E, E = 'big  kahuna  burger',
C = likes,
D = a ;

A = D, D = every,
B = 'big  kahuna  burger',
C = likes,
E = criminal ;

A = D, D = every,
B = E, E = 'big  kahuna  burger',
C = likes.


*/