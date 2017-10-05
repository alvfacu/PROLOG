pertenece(X,[]):-write(X),write(' No pertenece a la lista.').
pertenece(X,[Y|_]):-X=Y,write('Pertenece a lista.').
pertenece(X,[_|Y]):-pertenece(X,Y).
