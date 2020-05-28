%concatenar(+Lista1,+Lista2,-Resultado)
%Sera verdadero si Lista1 juntos a Lista2 es igual a resultado

concatenar([],Lista2,Lista2).
concatenar([C|R],Lista2,[C|Result]):-concatenar(R,Lista2,Result).
