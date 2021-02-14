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


/* résultat :

?- crossword(H1, H2, H3, V1, V2, V3).
H1 = V1, V1 = astante,
H2 = V2, V2 = baratto,
H3 = V3, V3 = statale ;

H1 = astante,
H2 = cobalto,
H3 = pistola,
V1 = astoria,
V2 = baratto,
V3 = statale ;

H1 = astoria,
H2 = baratto,
H3 = statale,
V1 = astante,
V2 = cobalto,
V3 = pistola ;

H1 = V1, V1 = astoria,
H2 = V2, V2 = cobalto,
H3 = V3, V3 = pistola ;

H1 = H2, H2 = V1, V1 = V2, V2 = baratto,
H3 = V3, V3 = statale ;

H1 = V1, V1 = cobalto,
H2 = V2, V2 = baratto,
H3 = V3, V3 = statale.

*/