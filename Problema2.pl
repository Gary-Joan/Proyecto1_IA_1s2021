% Hechos
hombre(daniel).
hombre(manuel).
hombre(jonas).
hombre(lamar).
hombre(pedro).
hombre(feliciano).

mujer(diana).
mujer(constancia).
mujer(ana_lucia).
mujer(ines).
mujer(ruth).
mujer(soledad).

pareja(lamar,ana_lucia).
pareja(ana_lucia,lamar).

pareja(ruth,pedro).
pareja(pedro,ruth).

pareja(diana,feliciano).
pareja(feliciano,diana).

pareja(jonas,soledad).
pareja(soledad,jonas).

progenitor(ana_lucia,ruth).
progenitor(lamar,ruth).

progenitor(ana_lucia,feliciano).
progenitor(lamar,feliciano).

progenitor(feliciano,manuel).
progenitor(diana,manuel).

progenitor(ruth,ines).
progenitor(pedro,ines).
progenitor(ruth,jonas).
progenitor(pedro,jonas).

progenitor(jonas,daniel).
progenitor(jonas,constancia).
progenitor(soledad,daniel).
progenitor(soledad,constancia).

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

tio(X,Y):-hermano(X,Z),progenitor(Z,Y),hombre(X).
tio(X,Y):-esposo(X,Z),hermana(Z,W),progenitor(W,Y),hombre(X).

tia(X,Y):-hermana(X,Z),progenitor(Z,Y),mujer(X).
tia(X,Y):-esposa(X,Z),hermano(Z,W),progenitor(W,Y),mujer(X).


cuniado(X,Y):-esposo(X,W),hermana(W,Y),hombre(X).
cuniado(X,Y):-esposo(X,W),hermano(W,Y),hombre(X).

cuniada(X,Y):-esposa(Y,W),hermano(W,X),hombre(X).
cuniada(X,Y):-esposo(Y,W),hermana(W,X),hombre(X).


cuniada(X,Y):-esposa(X,W),hermana(W,Y),mujer(X).
cuniada(X,Y):-esposa(X,W),hermano(W,Y),mujer(X).

cuniada(X,Y):-esposa(Y,W),hermano(W,X),mujer(X).
cuniada(X,Y):-esposo(Y,W),hermana(W,X),mujer(X).


imprimir_arbol(_) :- 
write('                     Lamar - Ana lucia'),nl,
write('              _______________|________________'),nl,
write('             |                                |'),nl,
write('            Ruth - Pedro              Feliciano - Diana '),nl,
write('               ___|___                              |'), nl,
write('              |       |                           Manuel' ),nl,
write('             Ines    Jonas - Soledad'),nl,
write('                      ______|_____ '),nl,
write('                      |          | '),nl,
write('                    Daniel    Constancia').
