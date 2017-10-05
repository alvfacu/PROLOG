carga:-consult('C:/Users/Facundo/Documents/Prolog/hotel.txt').
:-dynamic(habitacion/5).
:-dynamic(caracteristica/2).

inicio:-menu.

menu:-carga,write('Opciones 1-Habitaciones disponibles 2-Lista Premium ocupadas'),read(O),opcion(O).


% opcion(1):-writeln('Ingrese caracteristicas 1 al
% 5'),nl,leer(L),buscar_habitaciones(L,H),carga,mostrar(H).
opcion(1):-writeln('Ingrese caracteristicas 1 al 5'),nl,leer(L),buscar(L,H),carga,mostrar(H),menu.
opcion(2):-listar_shampoo,menu.
opcion(3).

listar_shampoo:-habitacion(H,_,_,P,1),P>900,write('Habitacion '),write(H),nl,fail.
listar_shampoo.

leer([H|T]):-read(H),H\=[],nl,writeln('Ingrese otra: '),leer(T).
leer([]).

buscar_habitaciones(L,[H|T]):-habitacion(H,_,C,_,0),retract(habitacion(H,_,C,_,0)),interseccion(L,C,I),contar(L,Cant),contar(I,Cont),Cont=Cant,buscar_habitaciones(L,T).
buscar_habitaciones(_,[]).

buscar(L,[C|K]):-habitacion(C,_,Caract,_,0),retract(habitacion(C,_,Caract,_,0)),todas_caract(L,Caract),buscar(L,K).
buscar(_,[]).

interseccion([],_,[]).
interseccion([H|T],L,[H|K]):-pertenece(H,L),interseccion(T,L,K).
interseccion([_|T],L,Li):-interseccion(T,L,Li).

pertenece(H,[H|_]).
pertenece(E,[_|T]):-pertenece(E,T).

todas_caract([],_).
todas_caract([H|T],L):-pertenece(H,L),todas_caract(T,L).


contar([],0).
contar([_|T],C):-contar(T,To),C is To+1.

mostrar([]).
mostrar([H|T]):-habitacion(H,N,_,P,_),nl,write(H),write(' - '),write(N),write(' - $'),write(P),nl,mostrar(T).






