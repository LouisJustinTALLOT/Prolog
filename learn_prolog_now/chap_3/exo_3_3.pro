directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

travelFromTo(Ville, Ville).
travelFromTo(A, B) :- directTrain(A, B); directTrain(B, A).

travelFromTo(A,B) :-
    directTrain(A, C),
    travelFromTo(C, B),
    write(C), nl. 

travelFromTo(A,B) :- travelFromTo(B,A). 
