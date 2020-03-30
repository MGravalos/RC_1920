/*
 * suma(?N1,?N2,?R)
 * cierto si R unifica a la suma
 * aritmetica de Peano de N1 y N2
 *
 */

suma(0,N2,N2).
suma(s(N1),N2,s(R)) :- suma(N1,N2,R).


p2d(0,0).
p2d(s(N),R2) :- p2d(N,R), R2 is R+1.


/*
 * resta(?N1,?N2,?R).
 * es cierto si R unifica con la resta de N1 menos
 * N2 en aritmetica de Peano.
 */

resta(N1,0,N1).
resta(N1,s(N2),R) :- resta(N1,N2,s(R)).


/*
 * mult(?N1,?N2,?R).
 * es cierto si R unifica con el producto de N1 y N2
 */
mult(_,0,0).
mult(N1,s(N2),R):-mult(N1,N2,R1), suma(N1,R1,R).

/*
 * div(?N1,?N2,?R,?Resto).
 * es cierto si R unifica con la division exacta de N1 y N2
 */

peano_div(N1,N2,0,N1) :- menor(N1,N2).
peano_div(N1, N2,s(C),R) :- resta(N1,N2,N3), peano_div(N3,N2,C,R).

/*
 * menor(?N1, ?N2)
 * es cierto si N1 es menor que N2 en aritmetica
 * de Peano
*/

menor(0,s(_)).
menor(s(N1),s(N2)):-menor(N1,N2).
