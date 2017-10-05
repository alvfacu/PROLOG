es_guitarrista(carolina).
es_guitarrista(jose).
es_guitarrista(miguel).
es_cantante(mariano).
es_cantante(silvia).
es_cantante(mauro).
es_baterista(eduardo).
es_baterista(diego).
es_baterista(laura).
vive(carolina,rosario).
vive(jose,rosario).
vive(miguel,funes).
vive(mariano,rosario).
vive(silvia,funes).
vive(eduardo,roldan).
vive(diego,casilda).
vive(laura,rosario).
vive(mauro,funes).


existe_baterista(X):-vive(B,X),es_baterista(B).
existe_guitarrista(X):-vive(G,X),es_guitarrista(G).
existe_cantante(X):-vive(C,X),es_cantante(C).

se_forma_banda(X):-existe_baterista(X),existe_guitarrista(X),existe_cantante(X).
