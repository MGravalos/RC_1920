/*
 *
 *comprime(Lista,R).
 *
 *comprime([1,1,1,2,2,3,3,3],R).
 *R = [(1,3),(2,2),(3,3)]
 *
 */

comprime([],[]).
comprime([E],[(E,1)]).
comprime([C,C|R],[(C,N)|Resto]) :- comprime([C|R],[(C,N2)|Resto]), N is N2+1.
comprime([C1,C2|R],[(C1,1)|Resto]) :- C1 \= C2, comprime([C2|R],Resto).
