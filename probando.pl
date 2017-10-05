%inicio:-leer(L),write(L).%

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

