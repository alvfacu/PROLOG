hombre(raul).
hombre(facundo).
hombre(ernesto).
mujer(zulema).
mujer(florencia).
mujer(rosa).
hombre(antonio).
mujer(gladys).
hombre(elfidio).
mujer(juana).
padres(facundo,zulema,raul).
padres(florencia,zulema,raul).
padres(raul,juana,elfidio).
padres(zulema,gladys,antonio).

hermano(A,B):-mujer(A),padres(A,X,Y),padres(B,X,Y), A\=B.
nieto(A,B):-hombre(A),padres(A,X,Y),(padres(X,_,B);padres(X,B,_);padres(Y,_,B);padres(Y,B,_)).
nieto2(A,B):-hombre(A),padres(A,M,_),padres(M,B,_).
nieto2(A,B):-hombre(A),padres(A,M,_),padres(M,_,B).
abuelo(A,B):-hombre(A),padres(B,X,Y),(padres(X,_,A);padres(Y,_,A)).

