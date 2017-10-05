%1) HACER FUNCION INGRESAR LISTA NROS ENTEROS DEVUELVA EL PREMIO DE LOS
% NUMEROS IMPARES%

inicio:-write("Ingrese un nro entero: "),leer(Lista),promedioImpar(Lista,Prom),write("El promedio de los impares: "),write(Prom).


leer([H|T]):-read(H),H\=[],write("Otro: "),leer(T).
leer([]).

%promedioImpar(L,Prom):-sumarImpar(L,S),contarImpar(L,C),Prom is S/C.%

promedioImpar(L,Prom):-calcImpar(L,S,C),Prom is S/C.

sumarImpar([],0).
sumarImpar([H|T],Suma):-not(0 is H mod 2),sumarImpar(T,S),Suma is S+H.
sumarImpar([_|T],Suma):-sumarImpar(T,Suma).

contarImpar([],0).
contarImpar([H|T],Cont):-not(0 is H mod 2),contarImpar(T,C),Cont is C+1.
contarImpar([_|T],Cont):-contarImpar(T,Cont).

calcImpar([],0,0).
calcImpar([H|T],Suma,Cont):-not(0 is H mod 2),calcImpar(T,S,C),Suma is S+H,Cont is C+1.
calcImpar([_|T],Suma,Cont):-calcImpar(T,Suma,Cont).




