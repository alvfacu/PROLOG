inicio:-write('Ingrese una letra: '),leer(L),read(X),pertenece(X,L).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

pertenece(E,[_|T]):-pertenece(E,T).
pertenece(E,[E|_]).
