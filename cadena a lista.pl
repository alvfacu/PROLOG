inicio:-read(Cad),pasar_a_lista(Cad,L),nl,writeln(L),nl,listarvc(L,LV,LC),nl,writeln(LV),nl,writeln(LC).

vocal(a).
vocal(e).
vocal(i).
vocal(o).
vocal(u).


pasar_a_lista('',[]).
pasar_a_lista(C,[H|T]):-sub_atom(C,0,1,L,H),sub_atom(C,1,L,_,R),pasar_a_lista(R,T).

listarvc([],[],[]).
listarvc([H|T],[H|C],L):-vocal(H),listarvc(T,C,L).
listarvc([H|T],L,[H|C]):-listarvc(T,L,C).
