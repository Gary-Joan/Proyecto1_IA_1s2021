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

pareja(ruth,feliciano).
pareja(feliciano,ruth).

pareja(diana,pedro).
pareja(pedro,diana).

pareja(jonas,soledad).
pareja(soledad,jonas).

progenitor(ana_lucia,ruth).
progenitor(lamar,ruth).
progenitor(ana_lucia,pedro).
progenitor(lamar,pedro).

progenitor(pedro,manuel).
progenitor(diana,manuel).

progenitor(ruth, ines).
progenitor(feliciano,ines).
progenitor(ruth,jonas).
progenitor(feliciano,jonas).

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

imprimir_arbol(_) :- 
write('                     Lamar - Ana lucia'),nl,
write('              _______________|________________'),nl,
write('             |                                |'),nl,
write('            Ruth - Feliciano                  Pedro - Diana '),nl,
write('               ___|___                              |'), nl,
write('              |       |                           Manuel' ),nl,
write('             Ines    Jonas - Soledad'),nl,
write('                      ______|_____ '),nl,
write('                      |          | '),nl,
write('                    Daniel    Constancia').
