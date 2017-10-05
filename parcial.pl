tiene_turno(roberto,lunes,facundo).
tiene_turno(roberto,martes,florencia).
tiene_turno(juan,miercoles,facundo).
tiene_turno(juan,jueves,sabrina).
tiene_turno(ricardo,martes,ana).

profesional(roberto,cardiologo,[444,111]).
profesional(juan,pediatra,[111,222,333]).
profesional(ricardo,nutricionista,[111,444,333]).


tiene_turno_especialidad(Es,Pa):-profesional(Pr,Es,_),tiene_turno(Pr,_,Pa).

profesional_atiende_ahi(Pr,C):-profesional(Pr,_,L),pertenece(L,C).

pertenece([H|_],H).
pertenece([_|T],X):-pertenece(T,X).
