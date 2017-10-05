leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

mayor([],X):-write(X).
mayor([H|T],X):-H>X,mayor(T,H).
mayor([_|T],X):-mayor(T,X).

inicio:-leer(L),mayor(L,0).
