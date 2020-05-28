

/*
  bin2gen(+ArbolBinario, -ArbolGenerico)

  es cierto si ArbolGenerico unifica con un
  árbol genérico equivalente al árbol binario
  ArbolBinario.

  bin2gen(a(1,nil,nil), R).
  R=a(1,[])

  bin2gen(a(1,a(2,nil,nil), a(3,nil,nil)), R).
  R=a(1,[a(2,[]), a(3,[])]).

        1
       / \
      2   3

*/

bin2gen(a(E,nil,nil),a(E,[])).
bin2gen(a(E,HI,HD),a(E,[L1,L2])):- HI \= nil, HD \= nil, bin2gen(HI,L1),bin2gen(HD,L2).
bin2gen(a(E,nil,HD),a(E,[L])):- HD \= nil, bin2gen(HD,L).
bin2gen(a(E,HI,nil),a(E,[L])):- HI \= nil, bin2gen(HI,L).
