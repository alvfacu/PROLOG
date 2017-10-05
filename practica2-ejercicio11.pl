%inicio:-write('Ingrese un nro: '),leer(L),mayor(L,0).%

%inicio:-write('Ingrese un nro: '),leer(L),mayor(L,0,Max),write(Max).%

inicio:-write('Ingrese un nro: '),leer([H|T]),mayor(T,H,Max),write(Max).

leer([H|T]):-read(H),H\=[],write('Otro: '),leer(T).
leer([]).

mayor([],U):-write(U).
mayor([H|T],U):-H>U,mayor(T,H).
mayor([_|T],U):-mayor(T,U).

mayor([],M,M). %M=Max%
mayor([H|T],M,Max):-H>M,mayor(T,H,Max).
mayor([_|T],M,Max):-mayor(T,M,Max).

%ENTRA HASTA EL EJERCICIO 8!!!!%
