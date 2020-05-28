
/*
   elimina_cada_n(Lista, N, R)
   es cierto si R unifica con una lista
   que contiene los elementos de Lista
   eliminando los valores que ocupan
   posiciones que son múltiplos de N.

   elimina_cada_n([1,2,3,4,5,6,7], 3, R)
   R=[1,2,4,5,7]

*/

elimina_cada_n(C,N,C):- length(C,L), L < N.
elimina_cada_n(Lista,N,Sol):- N2 is N-1, length(L1, N2),append(L1,[_|L2],Lista), elimina_cada_n(L2,N,R), append(L1,R,Sol).
