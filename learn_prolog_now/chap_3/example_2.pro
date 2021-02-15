% p :- p. % à ne pas faire, très dangereux

child(anne,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).

descend(X,Y)  :-  
    child(X,Y).
   
descend(X,Y)  :-  
    child(X,Z),
    descend(Z,Y).

/*
?- descend(X,Y).
X = anne,
Y = bridget ;

X = bridget,
Y = caroline ;

X = caroline,
Y = donna ;

X = donna,
Y = emily ;

X = anne,
Y = caroline ;

X = anne,
Y = donna ;

X = anne,
Y = emily ;

X = bridget,
Y = donna ;

X = bridget,
Y = emily ;

X = caroline,
Y = emily .

*/