loves(vincent,mia).
loves(marsellus,mia).
loves(pumpkin,honey_bunny).
loves(honey_bunny,pumpkin). 

jealous(X,Y):-  loves(X,Z),  loves(Y,Z).
% jealous(X,Y):-  loves(X,Z),  loves(Y,Z), \+ (X = Y). % meilleure version

% des résultats intéressants :

% ?- jealous(marsellus,W).
% W = vincent ;
% W = marsellus.

% on a bien jealous(marsellus, marsellus) car loves(marsellus, mia) et loves(marsellus, mia)