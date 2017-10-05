inicio:-read(Cad1),read(Cad2),pasarLista(Cad1,L1),pasarLista(Cad2,L2),interseccion(L1,L2,L3),writeln(L3),nl,eliminar(L3,LR),writeln(LR).

pasarLista('',[]).
pasarLista(Cad,[H|T]):-sub_atom(Cad,0,1,L,H),sub_atom(Cad,1,L,_,R),pasarLista(R,T).

interseccion([],_,[]).
interseccion([H|T],L,[H|C]):-pertenece(H,L),interseccion(T,L,C).
interseccion([_|T],L,Li):-interseccion(T,L,Li).

pertenece(H,[H|_]).
pertenece(H,[_|T]):-pertenece(H,T).

eliminar([],[]).
eliminar([H|T],S):-pertenece(H,T),eliminar(T,S).
eliminar([H|T],[H|C]):-eliminar(T,C).

