ini:-write('Ingrese un nro: '), read(N), facto(N,Z), write(Z).

facto(0,1).
facto(N,Z):-X is N-1,factorial(X,R),Z is R*N.
