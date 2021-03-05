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

padre(ana_lucia,ruth).
padre(lamar,ruth).
padre(ana_lucia,pedro).
padre(lamar,pedro).

padre(pedro,manuel).
padre(diana,manuel).

padre(ruth, ines).
padre(feliciano,ines).
padre(ruth,jonas).
padre(feliciano,jonas).

padre(jonas,daniel).
padre(jonas,constancia).
padre(soledad,daniel).
padre(soledad,constancia).
% Reglas

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
