%lista reversa
reversa([H|T],ReversedList):-
 reverseListHelper(T,[H],ReversedList).

reverseListHelper([],Acc,Acc).

reverseListHelper([H|T],Acc,ReversedList):-
 reverseListHelper(T,[H|Acc],ReversedList).
 
%ver si una lista es palindromo
palindromo(Xs):-
    reversa(Xs, Xs).

%duplicar una lista
duplicar([],[]).
duplicar([C|L1],[C,C|L2]):-duplicar(L1,L2).

%insertar un elemento dado un indice
insertar(X,L1,0,[X|L1]).
insertar(X,[C|R],Pos,[C|R2]):-
Pos1 is Pos-1,
insertar(X,R,Pos1,R2).

%dividir lista en 2

dividir(L, A, B) :-
    append(A, B, L),
    length(A, N),
    length(B, N).

dividir(L, A, B) :-
    append(A, B, L),
    length(A, N),
    N1 is N + 1,
    length(B, N1).

dividir(L, A, B) :-
    append(A, B, L),
    length(A, N),
    N1 is N - 1,
    length(B, N1).