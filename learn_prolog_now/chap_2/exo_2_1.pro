/* test de différentes requêtes

?- bread = bread.
true.

?- 'Bread'=bread.
false.

?- 'bread'=bread.
true.

?- Bread = bread.
Bread = bread.

?- bread = sausage.
false.

?- food(bread)  =  bread.
false.

?- food(bread) = X.
X = food(bread).

?- food(bread,X)  =  food(Y,sausage).
X = sausage,
Y = bread.

?- food(bread,X,beer)  =  food(Y,sausage,X).
false.

?- food(bread,X,beer)  =  food(Y,kahuna_burger).
false.

?- food(X)  =  X.
X = food(X).

?- meal(food(bread),drink(beer))  =  meal(X,Y).
X = food(bread),
Y = drink(beer).

?- meal(food(bread),X)  =  meal(X,drink(beer)).
false.

*/