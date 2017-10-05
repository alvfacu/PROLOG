inicio:-write('Ingrese un nro: '), read(N), factorial(N,Z), write(Z).

factorial(0,1).
factorial(N,Z):-X is N-1, factorial(X,R), Z is R*N.
