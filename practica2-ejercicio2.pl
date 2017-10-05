inicio:-write('Ingrese un elemento: '),leer([H|T]),write('Cabeza: '),write(H),write(' Cola: '),write(T).

leer([H|T]):-read(H),H\=[],write('Ingrese otro elemento: '),leer(T).
leer([]).
