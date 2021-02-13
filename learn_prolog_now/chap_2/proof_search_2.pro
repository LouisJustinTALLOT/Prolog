loves(vincent,mia).
loves(marcellus,mia).

jealous(A,B):-  loves(A,C),  loves(B,C).


/*
requêtes :

?- jealous(X,Y).
X = Y, Y = vincent ;
X = vincent,
Y = marcellus ;
X = marcellus,
Y = vincent ;
X = Y, Y = marcellus.

*/