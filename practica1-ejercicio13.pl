sumar(0,0,0).
sumar(N,SumPares,SumImpares):-0 is N mod 2, I is N-1, sumar(I,Par,SumImpares),SumPares is N+Par.
sumar(N,SumPares,SumImpares):-P is N-1, sumar(P,SumPares,Impar),SumImpares is N+Impar.
