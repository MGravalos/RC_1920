

% Comentarios de línea

/*
1) natural(1).
2) natural(n-1) -> natural(n) (como regla lógica).
*/

natural(1).
natural(N) :- N>1, N2 is N - 1, natural(N2).
