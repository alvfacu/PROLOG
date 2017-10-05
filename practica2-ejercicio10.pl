inicio:-write('Ingrese una lista: '),leer(L),write("Pertenece? "),read(X),pertenece(L,X).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).


pertenece([],_):-write("No pertenece").
pertenece([H|_],H):-write("Pertenece").
pertenece([_|T],X):-pertenece(T,X).
