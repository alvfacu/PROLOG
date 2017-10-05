inicio:-write('Ingrese un nro: '),leer(L),suma(L,Sum),write('Sumatoria: '),write(Sum).


leer([H|T]):-read(H),H\=[],leer(T).
leer([]).
suma([],0).
suma([H|T],Sum):-suma(T,S),Sum is H+S.
