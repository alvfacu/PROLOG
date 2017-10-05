hombre(facundo).
hombre(raul).
hombre(ernesto).
mujer(florencia).
mujer(zulema).
mujer(rosa).
padres(florencia,zulema,raul).
padres(facundo,zulema,raul).

hermana(X,Y):-mujer(X),padres(X,M,P),padres(Y,M,P),X\=Y.
