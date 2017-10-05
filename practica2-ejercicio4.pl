inicio:-write('Ingrese un elemento: '),leer([H|[C|_]]),write('Primer elemento: '),write(H),write(' y segundo elemento: '),write(C).

leer([H|T]):-read(H),H\=[],write('Ingrese otro elemento: '),leer(T).
leer([]).

