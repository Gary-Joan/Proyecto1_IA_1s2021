% Hechos

hombre(barry).
hombre(peter).
hombre(bend).
hombre(enrique).
hombre(tony).
hombre(harry).
hombre(ezio).
hombre(lorenzo).
hombre(sergio).
hombre(clark).
hombre(bruce).

mujer(marta).
mujer(diana).
mujer(may).
mujer(rachel).
mujer(lara).
mujer(mary).
mujer(lois).
mujer(pepper).


progenitor(marta,barry).
progenitor(marta,diana).
progenitor(marta,may).
progenitor(marta,rachel).

progenitor(bruce,barry).
progenitor(bruce,diana).
progenitor(bruce,may).
progenitor(bruce,rachel).
progenitor(bruce,pepper).

progenitor(pepper,tony).

progenitor(enrique,clark).
progenitor(enrique,lois).
progenitor(rachel,clark).
progenitor(rachel,lois).

progenitor(diana,mary).
progenitor(diana,harry).
progenitor(peter,mary).
progenitor(peter,harry).

progenitor(ben,ezio).
progenitor(ben,lorenzo).
progenitor(ben,sergio).
progenitor(may,ezio).
progenitor(may,lorenzo).
progenitor(may,sergio).


pareja(enrrique,rachel).
pareja(rachel,enrrique).

pareja(peter,diana).
pareja(diana,peter).

pareja(ben, may).
pareja(may,ben).

pareja(marta,bruce).
pareja(bruce,marta).


% Reglas


padre(X,Y):-hombre(X),progenitor(X,Y).
madre(X,Y):-mujer(X),progenitor(X,Y).

hermanos(X,Y):-progenitor(Z,X),progenitor(Z,Y).

hermano(X,Y):-hombre(X),hermanos(X,Y).
hermana(X,Y):-mujer(X),hermanos(X,Y).

esposo(X,Y):-pareja(X,Y),hombre(X).
esposa(X,Y):-pareja(X,Y),mujer(X).

suegro(X,Y):-padre(X,Z),pareja(Y,Z).
suegra(X,Y):-madre(X,Z),pareja(Y,Z).

yerno(X,Y):-suegro(Y,X);suegra(Y,X),hombre(X).
nuera(X,Y):-suegro(Y,X);suegra(Y,X),mujer(X).

abuelo(X,Y):-progenitor(Z,Y),padre(X,Z).
abuela(X,Y):-progenitor(Z,Y),madre(X,Z).

nieto(X,Y):-progenitor(Y,Z),progenitor(Z,X),hombre(X).
nieta(X,Y):-progenitor(Y,Z),progenitor(Z,X),mujer(X).

primo(X,Y):-progenitor(Z,X),progenitor(W,Y),hermanos(Z,W),hombre(X).
prima(X,Y):-progenitor(Z,X),progenitor(W,Y),hermanos(Z,W),mujer(X).