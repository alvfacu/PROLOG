inicio:-write('Ingrese un elemento: '),leer(L),ultimo(L,C),write('Ultimo elemento: '),write(C).

leer([H|T]):-read(H),H\=[],write('Ingrese otro elemento: '),leer(T).
leer([]).

ultimo([X],X).
ultimo([_|T],U):-ultimo(T,U).
