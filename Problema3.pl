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

