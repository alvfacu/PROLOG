inicio:-write('Ingrese un nro: '),leer(L),sumatoria(L,Sum),write(Sum).


leer([H|T]):-read(H),H\=[],write('Ingrese otro: '),leer(T).
leer([]).


sumatoria([],0).
sumatoria([H|T],Sum):-H\=[],sumatoria(T,S),Sum is S+H.
