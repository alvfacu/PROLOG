inicio:-write('Ingreso un nro: '),leer([H|T]),ultimo([H|T],U),X is H-U,write(X).

leer([H|T]):-read(H),H\=[],write('Ingrese otro: '),leer(T).
leer([]).

ultimo([X],X).
ultimo([_|T],U):-ultimo(T,U).
