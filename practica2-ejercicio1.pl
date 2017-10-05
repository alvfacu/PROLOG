inicio:-write('Ingrese un elemento: '),leer(L),write(L).
leer([H|T]):-read(H),H\=[],write('Ingrese otro elemento: '),leer(T).
leer([]).
