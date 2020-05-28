
/*
  Arboles Binarios

  nil
  a(Etiqueta, HijoIzquierda, HijoDerecha)

      1
     / \
    2   3


       1
	  / \
     /   \
    2     3
   / \   / \
  4   5 6   7
*/

arbol1( a(1, a(2, nil, nil), a(3, nil, nil)) ).
arbol2(a(1, a(2, a(4,nil,nil), a(5,nil,nil)), a(3, a(6,nil,nil),a(7,nil,nil)))).

/*
pertenece(E, Arbol).
  es cierto si la etiqueta E pertenece al
  Ã¡rbol binario Arbol.
*/

pertenece(E, a(E, _, _)).

% a -> b v c
% a -> b
% a -> c

pertenece(E, a(Et, HI, _)):-
  E \= Et,
  pertenece(E, HI).

pertenece(E, a(Et, _, HD)):-
  E \= Et,
  pertenece(E, HD).


/*
 * hojas(Arblo, Lista).
 * es cierto si Lista unifca con
 * una lista que contiene todas las hojas
 * del árbol
 */

hojas(nil,[]).
hojas(a(E,nil,nil),[E]).
hojas(a(_,HI,HD),R) :-
  HI \= nil, HD \= nil, hojas(HI,RI),hojas(HD,RD), append(RI,RD,R).
hojas(a(_,HI,nil),RI):- HI \= nil, hojas(HI,RI).
hojas(a(_,nil,HD),RD):- HD \= nil, hojas(HD,RD).

/*
 * preorden()
 * raiz,hi,hd
 */
preorden(nil,[]).
preorden(a(E,HI,HD),R) :- preorden(HI,RI),preorden(HD,RD), append([E|RI],RD,R).

/*
 *  posorden()
 *  hi,hd,raiz
 */
posorden(nil,[]).
posorden(a(E,HI,HD),R2) :- posorden(HI,RI),posorden(HD,RD),append(RI,RD,R),append(R,[E],R2).

/*
 * inorden()
 * hi,raiz,hd
 */

inorden(nil,[]).
inorden(a(E,HI,HD),R) :- inorden(HI,RI),inorden(HD,RD),append(RI,[E|RD],R).

/*
 * buscar_abb(E, ABB)
 * es cierto si el elemento E pertenece al árbol
 * binario de busqueda
 */

buscar_abb(E,a(E,_,_)).

buscar_abb(E,a(R,HI,_)) :- E < R, buscar_abb(E,HI).
buscar_abb(E,a(R,_,HD)) :- E > R, buscar_abb(E,HD).


arbol3( a(5, a(2, a(1,nil,nil), nil), a(8, a(6,nil,nil), a(9,nil,nil))) ).

/*
 * crear_arbol(+Lista,+Arbol)
 *
 */

crear_arbol([],nil).
crear_arbol([C|R],a(C,nil,HD)) :-crear_arbol(R,HD).


balanceado(nil).
balanceado(a(_,HI,HD)) :- altura(HI,AI),altura(HD,AD), R is abs(AI - AD), 1 is max(1,R), balanceado(HI), balanceado(HD).


altura(nil,0).
altura(a(_,HI,HD), R) :- altura(HI,RI), altura(HD,RD),RH is max(RD,RI), R is RH+1.

/*
 * crea_arbol_balanceado(Lista,Arbol)
 */

crea_arbol_balanceado([],nil).
crea_arbol_balanceado([C|R],a(C,HI,HD)) :- length(R,L), Med is L div 2, length(L1,Med), append(L1,L2,R), crea_arbol_balanceado(L1,HI), crea_arbol_balanceado(L2,HD).


/*
 * crea_abb(Lista,Arbol)
 */

crea_abb([],nil).
crea_abb(R,a(C,HI,HD)) :- length(R,L), Med is L div 2, length(L1,Med), append(L1,[C|L2],R), crea_abb(L1,HI), crea_abb(L2,HD).
