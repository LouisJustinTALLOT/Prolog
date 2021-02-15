child(anne,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).

descend(X,Y)  :-  child(X,Y).
descend(X,Y)  :-
    descend(X,Z),
    descend(Z,Y).

/*
?- descend(emily, anne).
ERROR: Out of local stack

[trace]  ?- descend(emily, anne).
   Call: (8) descend(emily, anne) ? creep
   Call: (9) child(emily, anne) ? creep
   Fail: (9) child(emily, anne) ? creep
   Redo: (8) descend(emily, anne) ? creep
   Call: (9) descend(emily, _4320) ? creep
   Call: (10) child(emily, _4320) ? creep
   Fail: (10) child(emily, _4320) ? creep
   Redo: (9) descend(emily, _4320) ? creep
   Call: (10) descend(emily, _4320) ? creep
   Call: (11) child(emily, _4320) ? creep
   Fail: (11) child(emily, _4320) ? creep
   Redo: (10) descend(emily, _4320) ? creep
   ...  

avec la version précédente on avait:
[trace]  ?- descend(emily, anne).
   Call: (8) descend(emily, anne) ? creep
   Call: (9) child(emily, anne) ? creep
   Fail: (9) child(emily, anne) ? creep
   Redo: (8) descend(emily, anne) ? creep
   Call: (9) child(emily, _4320) ? creep
   Fail: (9) child(emily, _4320) ? creep
   Fail: (8) descend(emily, anne) ? creep
false.
*/