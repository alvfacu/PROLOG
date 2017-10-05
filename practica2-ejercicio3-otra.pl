inicio:-write('Ingrese un elemento: '),leer([H|_]),write('Primer elemento: '),write(H).

leer([H|T]):-read(H),H\=[],write('Otro :'),leer(T).
leer([]).
