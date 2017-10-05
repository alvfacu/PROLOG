inic:-write('Ingrese una lista: '),read(L),write(L).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).
