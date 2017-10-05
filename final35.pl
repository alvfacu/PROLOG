inicio:-leer(L),nl,read(E),eliminar(L,E,LR,C),nl,write(LR),write(C).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

eliminar([],_,[],0).
eliminar([H|T],H,L,C):-eliminar(T,H,L,Cant),C is Cant+1.
eliminar([H|T],E,[H|C],Cant):-eliminar(T,E,C,Cant).
