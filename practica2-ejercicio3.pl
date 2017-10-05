inicio:-write('Ingrese un elemento: '),leer([_|[C|_]]),write(' Primer elemento: '),write(C).

leer([H|T]):-read(H),H\=[],write('Ingrese otro elemento: '),leer(T).
leer([]).

