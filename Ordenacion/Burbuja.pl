/*
 *burbuja(+Lista, -R)
 *cierto si R unifica una lista
 *con los elementos de Lista ordenados
 *de menos a mayor utilizando el metodo
 *burbuja
 */
burbuja(Lista,Lista) :- ordenada(Lista).
burbuja(Lista,R2) :- append(Lista1,[E1,E2|Lista2],Lista), E1 > E2, append(Lista1,[E2,E1|Lista2],R),burbuja(R,R2).
% burbuja(Lista,R2) :- append(Lista1,[E1,E2|Lista2],Lista), E1 =<
% E2,burbuja(Lista,R2).


/*
 * ordenanda(+Lista)
 * es cierto si los elementos de Lista están
 * ordenados de menor a mayor
 */

ordenada([]).
ordenada([_]).
ordenada([E1,E2|Resto]) :- E1 =< E2, ordenada([E2|Resto]).
