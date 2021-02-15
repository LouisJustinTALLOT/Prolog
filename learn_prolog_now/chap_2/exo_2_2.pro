house_elf(dobby).
witch(hermione).
witch('McGonagall').
witch(rita_skeeter).
magic(X):-  house_elf(X).
magic(X):-  wizard(X).
magic(X):-  witch(X).

/*
?-  magic(house_elf).
-> je ne sais pas ce que ça peut donner...
?- magic(house_elf).
ERROR: Undefined procedure: wizard/1
ERROR: In:
ERROR:    [9] wizard(house_elf)
ERROR:    [8] magic(house_elf) at /mnt/c/Users/ljtal/Documents/Prolog/learn_prolog_now/chap_2/exo_2_2.pro:6
ERROR:    [7] <user>
   Exception: (9) wizard(house_elf) ? creep
   Exception: (8) magic(house_elf) ? creep

?- wizard(harry).
ERROR: Undefined procedure: wizard/1 (DWIM could not correct goal)

?- magic(wizard).
ERROR: Undefined procedure: wizard/1
ERROR: In:
ERROR:    [9] wizard(wizard)
ERROR:    [8] magic(wizard) at /mnt/c/Users/ljtal/Documents/Prolog/learn_prolog_now/chap_2/exo_2_2.pro:6
ERROR:    [7] <user>
   Exception: (9) wizard(wizard) ? creep
   Exception: (8) magic(wizard) ? creep

?- magic('McGonagall').
ERROR: Undefined procedure: wizard/1
ERROR: In:
ERROR:    [9] wizard('McGonagall')
ERROR:    [8] magic('McGonagall') at /mnt/c/Users/ljtal/Documents/Prolog/learn_prolog_now/chap_2/exo_2_2.pro:6
ERROR:    [7] <user>
   Exception: (9) wizard('McGonagall') ? creep
   Exception: (8) magic('McGonagall') ? creep

?- magic(Hermione).
Hermione = dobby ;
ERROR: Undefined procedure: wizard/1
ERROR: In:
ERROR:    [9] wizard(_8272)
ERROR:    [8] magic(_8296) at /mnt/c/Users/ljtal/Documents/Prolog/learn_prolog_now/chap_2/exo_2_2.pro:6
ERROR:    [7] <user>
   Exception: (9) wizard(_7678) ? creep
   Exception: (8) magic(_7678) ? Unknown option (h for help)
   Exception: (8) magic(_7678) ? creep
*/