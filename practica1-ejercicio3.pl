pertenece(grupo1,brasil).
pertenece(grupo1,españa).
pertenece(grupo1,jamaica).
pertenece(grupo1,italia).
pertenece(grupo2,argentina).
pertenece(grupo2,nigeria).
pertenece(grupo2,holanda).
pertenece(grupo2,escocia).

sonRivales(X,Y):-pertenece(G,X),pertenece(G,Y),X\=Y.

