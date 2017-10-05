inicio:-leer(L),menu(L).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).


menu(L):-writeln('Ingrese opc: 1-Posicion elemento 2-Elemento en posicion 3-Eliminar elemento 4-Otra lista 5-Salir'),
	read(A),opc(L,A).

opc(L,1):-nl,writeln('Ingrese posicion: '),read(P),buscar_elemento(L,0,P),menu(L).
opc(L,2):-nl,writeln('Ingrese elemento: '),read(E),buscar_posicion(L,0,E),menu(L).
opc(L,3):-nl,writeln('Ingrese elemento a eliminar: '),read(E),eliminar(L,E,LR),writeln('Lista resultante: '),write(LR),menu(L).
opc(_,4):-inicio.
opc(_,_).


buscar_elemento([],_,_):-writeln('No se encuentra ningun elemento en dicha posicion'),nl.
buscar_elemento([H|_],P,P):-nl,writeln('El elemento es: '),write(H),nl.
buscar_elemento([_|T],C,P):-Can is C+1,buscar_elemento(T,Can,P).

buscar_posicion([],_,_):-writeln('No se ha encontrado la posicion'),nl.
buscar_posicion([H|_],C,H):-nl,writeln('La posicion es: '),write(C),nl.
buscar_posicion([_|T],C,E):-Can is C+1,buscar_posicion(T,Can,E).

eliminar([],_,[]).
eliminar([H|T],H,L):-eliminar(T,H,L).
eliminar([H|T],E,[H|C]):-eliminar(T,E,C).



