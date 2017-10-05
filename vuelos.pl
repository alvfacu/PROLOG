%vuelo(origen, destino, tiempo[min])
vuelo('Salta','Cordoba',80).
vuelo('Cordoba','Formosa',120).
vuelo('Cordoba','Rosario',55).
vuelo('Cordoba','Neuquen',100).
vuelo('Cordoba','Mendoza',65).
vuelo('Formosa','Corrientes',50).
vuelo('Corrientes','Posadas',70).
vuelo('Corrientes', 'Parana',57).
vuelo('Corrientes','Santa Fe',93).
vuelo('Posadas','Parana',85).
vuelo('Santa Fe','Rosario',30).
vuelo('Rosario','Parana',25).
vuelo('Rosario','Buenos Aires',55).
vuelo('Rosario','Mendoza',175).
vuelo('Mendoza','Buenos Aires',85).
vuelo('Mendoza','Neuquen',83).
vuelo('Neuquen', 'Buenos Aires',90).
vuelo('Buenos Aires','Calafate',115).
vuelo('Buenos Aires', 'Puerto Madryn',75).
vuelo('Neuquen','Calafate',65).

%PRIMERO EN PROFUNDIDAD
calculaRutaProf(Inicio,Meta):-buscaRuta(Inicio,Meta,[Inicio],Sol),
	                      reverse(Sol,Sol2),
		              write("Ruta :"),write(Sol2),nl,calcularTiempo(Sol2,Total),write("Tiempo total [min]:" ),write(Total).
buscaRuta(E,E,Ruta,Ruta).
buscaRuta(E,Meta,Ruta,Sol):-sucesor(E,NE),
	              not(pertenece(NE,Ruta)),
	              buscaRuta(NE,Meta,[NE|Ruta],Sol).

pertenece(H,[H|_]).
pertenece(C,[_|T]):-pertenece(C,T).

calcularTiempo([_],0).
calcularTiempo([H|[T|C]],Suma):-vuelo(H,T,R),calcularTiempo([T|C],X),Suma is X+R.
calcularTiempo([H|[T|C]],Suma):-vuelo(T,H,R),calcularTiempo([T|C],X),Suma is X+R.


inicio:-write("Ciudad origen: "),read(Inicio),
	write(" Ciudad destino: "),read(Meta),
	calculaRutaProf(Inicio,Meta).

%PRIMERO EN ANCHURA
calculaRutaAnchura(Inicio,Meta):-buscaRuta([[Inicio]],Meta,Sol),
	                         reverse(Sol,Sol2),
				 write("Ruta: "),write(Sol2),
				 nl,
				 calcularTiempo(Sol2,Total),write("Tiempo total [min]: "),write(Total).

buscaRuta([[Estado|Ruta]|_],Estado,[Estado|Ruta]).
buscaRuta([PrimerRuta|OtrasRutas],Meta,Sol):-expandir(PrimerRuta,NuevasRutas),concatenar(OtrasRutas,NuevasRutas,NuevaLista),buscaRuta(NuevaLista,Meta,Sol).

expandir([Estado|Ruta],NuevasRutas):-findall([NuevoEstado,Estado|Ruta],(sucesor(Estado,NuevoEstado),not(pertenece(NuevoEstado,[Estado|Ruta]))),NuevasRutas).
expandir(_,[]).

sucesor(E,NE):-vuelo(E,NE,_).
sucesor(E,NE):-vuelo(NE,E,_).

concatenar([],L2,L2).
concatenar([H1|T1],L2,[H1|T]):-concatenar(T1,L2,T).
