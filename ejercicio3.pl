grupo(1,'Brasil').
grupo(1,'España').
grupo(1,'Jamaica').
grupo(1,'Italia').
grupo(2,'Argentina').
grupo(2,'Nigeria').
grupo(2,'Holanda').
grupo(2,'Escocia').

sonRivales(E1,E2):-grupo(X,E1),grupo(X,E2),E1\=E2. %BIEN DECLARATIVO
rivales(E1,E2):-grupo(X,E1),grupo(Z,E2),E1\=E2,X=Z. %MAL DECLARATIVO (ES PROCEDURAL)

