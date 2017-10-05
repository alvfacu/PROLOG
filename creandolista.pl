inicio:-write("Elemento: "),leer(L),write("Eliminar :"),read(X),eliminar(X,L,R),write(R).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

eliminar(X,[X|C],C).
eliminar(X,[H|T],[H|C]):-eliminar(X,T,C).
