%persona(dni,nombre,edad,obraSocial,plan).
%obraSocial(obra,plan,medicamento,porc_cobertura)

carga:-consult('C:/Users/Facundo/Documents/Prolog/BD.txt').
carga_pacientes:-consult('C:/Users/Facundo/Documents/Prolog/personas.txt').
carga_obras:-consult('C:/Users/Facundo/Documents/Prolog/obrassociales.txt').


% 1-devolver una lista con los DNI de las personas que tengan mas de 65
% años y cuyo plan cubra al menos 10 medicamentos al 100 porc
% (lo hago mayores de 50 y plan cubra al menos 3 medicamentos al 100
% porc 2- devolver los datos de aquellas personas que tengan mas de una
% obras social.

:-dynamic(persona/5).
:-dynamic(obraSocial/4).

inicio:-writeln('Bienvenido'),nl,menu.

menu:-carga_pacientes,writeln('Ingrese opcion (1-DNIs OBRA SOCIAL 100%/2-DATOS +1 OBRA (R)/3-DATOS +1 OBRA (SR)/4-SALIR): '),read(Opc),opc(Opc),menu.

% LISTA DE DNI CON OBRA SOCIAL Y PLAN CON COBERTA 100 EN MAS DE 3
% MEDICAMENTOS
opc(1):-buscarDNI(L),writeln('Lista resultante:'),write(L),nl.
%MUESTRA DATOS PERO NO ELIMINA, POR ENDE MUESTRA DATOS REPETIDOS
opc(2):-persona(D,N,E,O,_),persona(D,N,E,X,_),O\=X,nl,writeln('DNI: '),write(D),nl,write('NOMBRE: '),write(N),nl,write('EDAD: '),write(E),nl,fail.
%MUESTRA DATOS PERO ELIMINA, POR ENDE MUESTRA DATOS UNICOS, NO REPETIDOS
opc(3):-buscarDNI,nl.

buscarDNI:-persona(D,N,E,O,_),persona(D,N,E,X,_),O\=X,retractall(persona(D,N,E,_,_)),write(D),nl,write(N),nl,write(E),nl,buscarDNI.

buscarDNI([H|T]):-persona(H,_,E,O,P),retract(persona(H,_,E,O,P)),E>50,cubrePlan(O,P),buscarDNI(T).
buscarDNI([]).

cubrePlan(O,P):-carga_obras,lista100(O,P,L),contar(L,C),C>=3.

lista100(O,P,[H|T]):-obraSocial(O,P,H,C),retract(obraSocial(O,P,H,C)),C=100,lista100(O,P,T).
lista100(_,_,[]).

contar([],0).
contar([_|T],S):-contar(T,C),S is C+1.










