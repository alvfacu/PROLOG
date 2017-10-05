inicio:-write('Ingrese un nro: '),leer(L),write("Ingrese elemento que desea eliminar: "),read(N),nuevaLista(L,N,L2),write(L2).

leer([H|T]):-read(H),H\=[],write("Ingrese otro: "),leer(T).
leer([]).

nuevaLista([],_,[]).
nuevaLista([H|T],X,[H|T2]):-H\=X,nuevaLista(T,X,T2).
nuevaLista([_|T],X,L2):-nuevaLista(T,X,L2).

