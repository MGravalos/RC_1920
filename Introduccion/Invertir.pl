%Invertir(Lista,Resultado).
%
invertir([],[]).
invertir([C|R],Result):-invertir(R,R2),append(R2,[C],Result).
