inicio:-write('Ingrese un nro:'),leer(L),contar(L,C),write(C).

leer([H|T]):-read(H),H\=[],write('Ingrese otro: '),leer(T).
leer([]).

contar([],0).
contar([H|T],X):-H\=[],contar(T,R),X is R+1.
