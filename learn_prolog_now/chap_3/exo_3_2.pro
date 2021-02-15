directly_in(irina, natasha).
directly_in(natasha, olga).
directly_in(olga, katarina).

is_in(X,Y) :- directly_in(X,Y).

is_in(X,Y) :-
    directly_in(X,Z), 
    is_in(Z,Y).

