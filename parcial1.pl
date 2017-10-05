inicio:-write("Ingrese un entero: "),leer(L),nuevaLista(L,LN),write(LN).

leer([H|T]):-read(H),H\=[],write("Otro entero: "),leer(T).
leer([]).


nuevaLista([],[]).
nuevaLista([H|T1],[X|T2]):-0 is H mod 2,X is H-1,nuevaLista(T1,T2).
nuevaLista([H|T1],[X|T2]):-X is H-2,nuevaLista(T1,T2).



le_gusta(carla,panama).
le_gusta(carla,hawaii).
le_gusta(roberto,barcelona).
le_gusta(roberto,polonia).
le_gusta(gaston,alemania).
le_gusta(gaston,holanda).
le_gusta(gaston,polonia).

destino(barcelona,playa,200).
destino(hawaii,playa,150).
destino(panama,playa,200).
destino(alemania,montaña,350).

viaje(P,D):-le_gusta(P,D),destino(D,playa,M),M=<200.


carrera(civil,presencial,200,3).
carrera(isi,distancia,200,3).
carrera(arquitectura,distancia,150,4).
carrera(tecnico,distancia,250,2).
carrera(marketing,presencial,270,2).

resultado:-carrera(X,distancia,P,A),P=<300,A=<4,write(X).



