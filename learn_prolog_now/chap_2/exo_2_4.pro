/*
on doit remplir une grille de la forme suivante : 
    _   _   _
  _| |_| |_| |_
 |_   _   _   _|
  _| |_| |_| |_
 |_   _   _   _|
  _| |_| |_| |_
 |_   _   _   _|
   |_| |_| |_|

avec 6 mots de 7 lettres:
astante , astoria , baratto , cobalto , pistola , statale .

*/

word(astante,  a,s,t,a,n,t,e).
word(astoria,  a,s,t,o,r,i,a).
word(baratto,  b,a,r,a,t,t,o).
word(cobalto,  c,o,b,a,l,t,o).
word(pistola,  p,i,s,t,o,l,a).
word(statale,  s,t,a,t,a,l,e).

crossword(H1, H2,H3, V1, V2, V3) :- 
    word(H1, AA, AB, AC, AD, AE, AF, AG),
    word(H2, BA, BB, BC, BD, BE, BF, BG),
    word(H3, CA, CB, CC, CD, CE, CF, CG),
    word(V1, DA, DB, DC, DD, DE, DF, DG),
    word(V2, EA, EB, EC, ED, EE, EF, EG),
    word(V3, FA, FB, FC, FD, FE, FF, FG),

    AB = DB, 
    AD = EB, 
    AF = FB,

    BB = DD, 
    BD = ED, 
    BF = FD,

    CB = DF, 
    CD = EF, 
    CF = FF,

    nl, write('-------'), nl,
    write(' '), write(DA), write(' '), write(EA), write(' '), write(FA), write(' '), nl,
    write(AA),  write(AB), write(AC),  write(AD), write(AE),  write(AF), write(AG),  nl,
    write(' '), write(DC), write(' '), write(EC), write(' '), write(FC), write(' '), nl,
    write(BA),  write(BB), write(BC),  write(BD), write(BE),  write(BF), write(BG),  nl,
    write(' '), write(DE), write(' '), write(EE), write(' '), write(FE), write(' '), nl,
    write(CA),  write(CB), write(CC),  write(CD), write(CE),  write(CF), write(CG),  nl,
    write(' '), write(DG), write(' '), write(EG), write(' '), write(FG), write(' '), nl, 
    write('-------'), nl.

crossword_no_repeat() :- 

    word(H1, AA, AB, AC, AD, AE, AF, AG),
    word(H2, BA, BB, BC, BD, BE, BF, BG),
    word(H3, CA, CB, CC, CD, CE, CF, CG),
    word(V1, DA, DB, DC, DD, DE, DF, DG),
    word(V2, EA, EB, EC, ED, EE, EF, EG),
    word(V3, FA, FB, FC, FD, FE, FF, FG),

    AB = DB, 
    AD = EB, 
    AF = FB,

    BB = DD, 
    BD = ED, 
    BF = FD,

    CB = DF, 
    CD = EF, 
    CF = FF,


    \+(H1 = H2),
    \+(H1 = H3),
    \+(H1 = V1),
    \+(H1 = V2),
    \+(H1 = V3),

    \+(H2 = H1),
    \+(H2 = H3),
    \+(H2 = V1),
    \+(H2 = V2),
    \+(H2 = V3),

    \+(H3 = H1),
    \+(H3 = H2),
    \+(H3 = V1),
    \+(H3 = V2),
    \+(H3 = V3),

    \+(V1 = H1),
    \+(V1 = H2),
    \+(V1 = H3),
    \+(V1 = V2),
    \+(V1 = V3),

    \+(V2 = H1),
    \+(V2 = H2),
    \+(V2 = H3),
    \+(V2 = V1),
    \+(V2 = V3),

    \+(V3 = H1),
    \+(V3 = H2),
    \+(V3 = H3),
    \+(V3 = V1),
    \+(V3 = V2),


    write('Mots obtenus :'), nl,
    write('H1 : '), write(H1), nl,
    write('H2 : '), write(H2), nl, 
    write('H3 : '), write(H3), nl, 
    write('V1 : '), write(V1), nl,
    write('V2 : '), write(V2), nl, 
    write('V3 : '), write(V3), nl,
    write('Grille complétée :'), nl,

    write('-------'), nl,
    write(' '), write(DA), write(' '), write(EA), write(' '), write(FA), write(' '), nl,
    write(AA),  write(AB), write(AC),  write(AD), write(AE),  write(AF), write(AG),  nl,
    write(' '), write(DC), write(' '), write(EC), write(' '), write(FC), write(' '), nl,
    write(BA),  write(BB), write(BC),  write(BD), write(BE),  write(BF), write(BG),  nl,
    write(' '), write(DE), write(' '), write(EE), write(' '), write(FE), write(' '), nl,
    write(CA),  write(CB), write(CC),  write(CD), write(CE),  write(CF), write(CG),  nl,
    write(' '), write(DG), write(' '), write(EG), write(' '), write(FG), write(' '), nl, 
    write('-------'), nl, nl, nl.


/* résultat :

?- crossword(H1, H2, H3, V1, V2, V3).

-------
 a b s 
astante
 t r a 
baratto
 n t a 
statale
 e o e 
-------
H1 = V1, V1 = astante,
H2 = V2, V2 = baratto,
H3 = V3, V3 = statale ;

-------
 a b s 
astante
 t r a 
cobalto
 r t a 
pistola
 a o e 
-------
H1 = astante,
H2 = cobalto,
H3 = pistola,
V1 = astoria,
V2 = baratto,
V3 = statale ;

-------
 a c p 
astoria
 t b s 
baratto
 n l o 
statale
 e o a 
-------
H1 = astoria,
H2 = baratto,
H3 = statale,
V1 = astante,
V2 = cobalto,
V3 = pistola ;

-------
 a c p 
astoria
 t b s 
cobalto
 r l o 
pistola
 a o a 
-------
H1 = V1, V1 = astoria,
H2 = V2, V2 = cobalto,
H3 = V3, V3 = pistola ;

-------
 b b s 
baratto
 r r a 
baratto
 t t a 
statale
 o o e 
-------
H1 = H2, H2 = V1, V1 = V2, V2 = baratto,
H3 = V3, V3 = statale ;

-------
 c b s 
cobalto
 b r a 
baratto
 l t a 
statale
 o o e 
-------
H1 = V1, V1 = cobalto,
H2 = V2, V2 = baratto,
H3 = V3, V3 = statale.

*/