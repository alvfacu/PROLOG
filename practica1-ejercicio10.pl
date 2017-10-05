conecta(a,c).
conecta(c,d).
conecta(b,d).
conecta(d,e).
conecta(e,h).
conecta(h,j).
conecta(e,i).
conecta(i,j).
conecta(b,f).
conecta(f,g).
conecta(g,j).

requiere_de(X,X).
requiere_de(X,Y):-conecta(N,Y),requiere_de(X,N).
