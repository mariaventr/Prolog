hacerlo:- Resultado1 is 3-2, write(Resultado1),nl,
          Resultado2 is 3+2,write(Resultado2).
ver(R):- sigue(R,sqrt(4)). %calcular raiz cuadrara de 4
sigue(X,N):-X is N. %saber si un numero es igual a otro
% succ(3, X). succesor para numeros naturales X tiene que ser mayor que 3, (X,0) FALLA y (X,-1) ERROR
% plus(?Int1, ?Int2, ?Int3). true. Si Int3 = Int1 + Int2. (Al menos
% dos de los tres arg deben estar instanciados a enteros)
% - abs(+Expr). (-5,X)=5// Evalua Expresión y retorna su valor absoluto.
factorial(0,1).
factorial(X,R):- X > 0, A is X - 1, factorial(A,R1), R is X * R1.
% [cabeza|cola] donde cola es lista, el operador | se comporta como
% analizador y constructor
% Con constantes [3,5,7] lista con 3 elementos
%[3|[5,7]]
%[a,b,[c,d,e]] //donde [c,d,e] es sublista
% Con variables [X|Y] [X,Y|Z] [X|[Y|Z]]
% SWI Prolog proporciona predicados para el manejo de listas:
%?- is_list(Term).
%?- length(Lista, Long).
%?- sort(Lista, ListaOrdenada).
%?- append(List1, List2, ListUnion).
%?- member(Elem, Lista).% Elem es elemento de Lista
%?- nextto(X, Y, Lista).% Y está después de X en la Lista.
% ?- delete(List1, Elem, List2).%List2 contiene los elementos de List1
% sin Elem.
% ?- nth0(Index, Lista, Elem).%Elem es el i-ésimo elemento de Lista,
% comenzando por el 0.
% ?- reverse(List1, List2).%List2 es List1 pero con el orden de los
% elementos cambiado.
longitud( [], 0).
longitud( [X|Y] , R):- longitud(Y, R1), R is R1 +1.

sumar_positivos([], 0). % Caso base: la suma de una lista vacía es 0.
sumar_positivos([X|Resto], Suma) :-X > 0, sumar_positivos(Resto, SumaResto), Suma is X + SumaResto.

cons(Elemento, Lista, [Elemento|Lista]).

ruta( 1, a , b).
ruta( 2, a , c).
ruta( 8, b , c).
ruta( 3, b , d).
ruta( 4, c , d).
camino( C,C, [ ]) :- !.
camino(Co, Cd, [X|Y]) :- ruta(X, Co, Ci), camino(Ci, Cd, Y).
