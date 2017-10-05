inicio:-write("Ingrese un nro: "),read(X),crearLista(X,L),write(L).

crearLista(0,[]).
crearLista(H,[H|T]):-X is H-1,crearLista(X,T).


