inicio:-leer(L),suma(L,C),write(C).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

suma([],0).
suma([H|T],Suma):-suma(T,S),Suma is S+H.
