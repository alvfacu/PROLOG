hijo(juan,miguel).
hijo(jose,miguel).
hijo(miguel,roberto).
hijo(julio,roberto).
hijo(roberto,carlos).
descendiente(A,A).
descendiente(A,B):-hijo(A,H),descendiente(H,B).
