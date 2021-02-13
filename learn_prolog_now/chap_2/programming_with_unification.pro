vertical(line(point(X,Y),point(X,Z))).
horizontal(line(point(X,Y),point(Z,Y))).

% on peut maintenant essayer des requêtes:

% ?- vertical(line(point(1,1),point(1,3))).
% true.

% ?- vertical(line(point(1,1),point(3,2))).
% false.

% ?- horizontal(line(point(1,1),point(2,Y))).
% Y = 1.