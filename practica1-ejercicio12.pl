suma(1,1).
suma(N,Sum):-X is N-1,suma(X,R),Sum is N+R.
