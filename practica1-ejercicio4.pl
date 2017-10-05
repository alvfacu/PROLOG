hombre(facundo).
hombre(raul).
hombre(antonio).
hombre(elfidio).
hombre(ernesto).
hombre(maestro).
mujer(florencia).
mujer(zulema).
mujer(gladys).
mujer(juana).
mujer(beatriz).
padres(florencia,zulema,raul).
padres(facundo,zulema,raul).
padres(zulema,gladys,antonio).
padres(raul,juana,elfidio).
padres(ernesto,beatriz,maestro).
padres(beatriz,juana,elfidio).

hermana(A,B):-mujer(A),padres(A,M,P),padres(B,M,P),A\=B.

nieto(A,B):-hombre(A),padres(A,M,P),((padres(M,B,_);padres(M,_,B));(padres(P,B,_);padres(P,_,B))),A\=B.

abuelo(A,B):-hombre(A),(padres(H,A,_);padres(H,_,A)),(padres(B,H,_);(padres(B,_,H))).

tia(A,B):-hermana(A,H),(padres(B,H,_);padres(B,_,H)).

tia(A,B):-mujer(A),padres(A,M,P),padres(H,M,P),(padres(B,H,_);padres(B,_,H)),A\=H.

