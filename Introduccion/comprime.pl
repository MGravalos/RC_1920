/*
 *
 *comprime(Lista,R).
 *
 *comprime([1,1,1,2,2,3,3,3],R).
 *R = [(1,3),(2,2),(3,3)]
 *
 */

comprime([],[]).
comprime([C|R],Almacena) :- N is Almacena[N], N2 is N+1, Almacena2[(C,N2)], comprime(R,Almacena2).
