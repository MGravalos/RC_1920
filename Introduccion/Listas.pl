/*
 * num_elem(?Lista, ?Num)
 *     es cierto si Num unifica con el nº de elementos
 *     de la lista Lista
 *
 *
 */

 num_elem([], 0).
 num_elem([_|Resto],N) :- num_elem(Resto,N2),N is N2+1.

