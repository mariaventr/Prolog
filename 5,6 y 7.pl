potencia(_,0, 1).
potencia(B,E,R):- E > 0, EA is E-1, potencia(B,EA,RA),R is B*RA.

modulo(X,Y,R):-X<Y, R is X.
modulo(X,Y,R):- X>=Y, X1 is X-Y, modulo(X1,Y,R).

union([], L2, L2).
union([X|L1], L2, [X|L3]) :- union(L1, L2, L3).
