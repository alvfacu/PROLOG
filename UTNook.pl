usuario(1,'Miguel Martinez','Rosario').
usuario(2,'Patri Rodríguez','Funes').
usuario(3,'Juan Ramirez','Venado Tuerto').
usuario(4,'Marco Antonio','Rosario').
usuario(5,'Homero Thompson','Funes').
usuario(6,'Camila Polin','Rosario').
usuario(7,'Nancy Piccilo','Funes').
usuario(8,'Angel Moan','Rosario').
usuario(9,'Belen Manfred','Funes').
usuario(10,'Diego Dip','Rosario').
usuario(11,'Steven Hop','Casilda').
intereses(1,['natacion','mineria de datos','yoga','comida mexicana']).
intereses(2,['alimentos organicos','Oktoberfest 2015','Saga Fast & Furious','voley','formula 1']).
intereses(3,['futbol','astrología','cine','Retrofest']).
intereses(4,['TC 2000', 'Saga Star Wars', 'perros', 'U2', 'tenis']).
intereses(5,['comida mexicana', 'ingeniería en sistemas', 'formula 1','futbol']).
intereses(6,['serie Lost','tenis','meditación','Psicología']).
intereses(7,['Saga Fast & Furious','cocinar','formula Renault','futbol','cine']).
intereses(8,['U2','maratones Rosario','natacion','musica electronica', 'Oktoberfest 2015']).
intereses(9,['natacion','yoga','mineria de datos','TC 2000']).
intereses(10,['natacion','serie Lost','reiki','cocinar','cine']).
intereses(11,['vida al aire libre','perros','astrología','yoga','comida mexicana','U2', 'TC 2000']).

% intereses_comunes(X,Y):-X\=Y,intereses(X,L1),intereses(Y,L2),interseccion(L1,L2,L3),write(L3).%
% interseccion([],_,[]).
%interseccion([H|T],L2,[H|T3]):-pertenece(L2,H),interseccion(T,L2,T3).
%interseccion([_|T],L2,L3):-interseccion(T,L2,L3).
%pertenece([H|_],H).
%pertenece([_|T],X):-pertenece(T,X).

son_candidatos(X,Y):-X\=Y,intereses(X,L1),intereses(Y,L2),interseccion(L1,L2,L3),contar_comunes(L3,Cont),((Cont>=2,write("Son candidatos"));(Cont<2,write("No son candidatos"))).

interseccion([],_,[]).
interseccion([H|T1],L2,[H|T2]):-pertenece(H,L2),interseccion(T1,L2,T2).
interseccion([_|T1],L2,L3):-interseccion(T1,L2,L3).

pertenece(H,[H|_]).
pertenece(X,[_|T]):-pertenece(X,T).

contar_comunes([],0).
contar_comunes([_|T],Cont):-contar_comunes(T,R),Cont is R+1.
