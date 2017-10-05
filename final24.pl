carga:-consult('C:/Users/Facundo/Documents/Prolog/gastos.txt').
:-dynamic(vehiculo/3).
:-dynamic(viaje/2).

inicio:-carga,costototal1.

costototal:-vehiculo(N,D,P),sumatoria(N,S),nl,write('Vehiculo: '),write(D),write(' '),write(P),write(' -- Total: '),write(S),nl,retract(vehiculo(N,D,P)),costototal.
costototal.

costototal1:-vehiculo(N,D,P),sumatoria(N,S),nl,write('Vehiculo: '),write(D),write(' '),write(P),write(' -- Total: '),write(S),nl,fail.
costototal1.

sumatoria(N,Sum):-viaje(N,M),retract(viaje(N,M)),sumatoria(N,S),Sum is S+M.
sumatoria(_,0).
