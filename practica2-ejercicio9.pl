inicio:-write('Ingrese un nro: '),leer(L),suma(L,S),contar(L,C),promedio(L,S,C).

leer([H|T]):-read(H),H\=[],write('Ingrese otro: '),leer(T).
leer([]).

suma([],0).
suma([H|T],S):-suma(T,R),S is R+H.

contar([],0).
contar([_|T],C):-contar(T,N),C is N+1.

promedio(_,S,C):-X is S/C,write('Promedio: '),write(X).
