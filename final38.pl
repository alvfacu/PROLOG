:-dynamic(persona/4).

cargar:-consult('C:/Users/Facundo/Documents/Prolog/gastos.txt').
grabar:-tell('C:/Users/Facundo/Documents/Prolog/gastos.txt'),listing(persona),told.


inicio:-menu.

menu:-cargar,writeln('Opciones: 1. Alta - 2. Prom persona año - 3. Salir'),read(O),opc(O).

opc(1):-writeln('Persona :'),read(P),writeln('Gasto :'),read(G),writeln('Fecha dd/mm/aaaa:'),read(F),writeln('Monto :'),read(M),asserta(persona(P,G,F,M)),grabar,menu.
opc(2):-writeln('Ingrese año: '),read(A),calc(A,C,S),prom(C,S),menu.
opc(3):-listar(L),writeln(L),menu.
opc(4):-eliminar,menu.
opc(_).

calc(A,Cont,Sum):-persona(_,_,F,M),sub_atom(F,6,4,_,R),atom_number(R,A),retractall(persona(_,_,F,M)),calc(A,C,T),Sum is T+M,Cont is C+1.
calc(_,0,0).

prom(0,_):-writeln('No hay gastos').
prom(C,S):-P is S/C, writeln('Promedio: '),write(P),nl.

listar([H|T]):-persona(H,_,_,S),S>111,retractall(persona(H,_,_,S)),listar(T).
listar([]).

eliminar:-read(N),retract(persona(N,_,_,_)),grabar.








