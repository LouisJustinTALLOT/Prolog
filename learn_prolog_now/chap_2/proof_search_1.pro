% http://www.learnprolognow.org/lpnpage.php?pagetype=html&pageid=lpn-htmlse6

f(a).
f(b).

g(a).
g(b).

h(b).

k(X)  :-  f(X),  g(X),  h(X).

% requêtes : 

% ?- k(Y).
% Y = b.