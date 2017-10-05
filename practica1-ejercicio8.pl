horoscopo(aries,21,3,20,4).
horoscopo(tauro,21,4,21,5).
horoscopo(geminis,22,5,21,6).
horoscopo(sagitario,21,11,21,12).

signo(D,M,S):-horoscopo(S,Di,Mi,Df,Mf),((M=Mi),(Di=<D);(M=Mf),(Df>=D)).
