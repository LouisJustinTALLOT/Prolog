/*

?-    g(X,Y)  =  Y.
Y = g(X, Y).

?- X  =  f(X),  Y  =  f(Y),  X  =  Y.
X = Y, Y = f(Y).

?- a  \=  b.
true.

?- a  \=  a.
false.

?- 'a'  \=  a.
false.

?- A  \=  a.
false.

?- f(a)  \=  a.
true.

?- f(a)  \=  A.
false.

?- f(A)  \=  f(a).
false.

?- g(a,B,c)  \=  g(A,b,C).
false.

?- g(a,b,c)  \=  g(A,C).
true.

?- f(X)  \=  X.
false.
*/