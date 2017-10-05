inicio:-leer(L),leer(L1),concatenar(L,L1,L2),writeln(L2).

leer([H|T]):-read(H),H\==[],leer(T).
leer([]).

concatenar([],L,L).
concatenar([H|T],L,[H|C]):-concatenar(T,L,C).

