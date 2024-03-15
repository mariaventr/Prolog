padre(marcos,juan).
padre(marcos, matias).
padre(marcos,juana).
padre(juan,sofia).
padre(juan,maria).
padre(lucas,nicolas).
padre(matias, jonny).
madre(juana,milagros).
madre(marta,matias).
madre(marta, lucas).
madre(lucia,sofia).
hombre(nicolas).
hombre(lucas).
hombre(matias).
hombre(marcos).
hombre(juan).
mujer(sofia).
mujer(milagros).
mujer(juana).
mujer(maria).
mujer(marta).
progenitor(X,Y):-padre(X,Y).
progenitor(X,Y):-madre(X,Y).
es_madre(X):-madre(X,_).
es_padre(X):-padre(X,_).
es_hijo(X):-padre(_,X);madre(_,X).
hija(X,Y):-mujer(X),progenitor(Y,X).
tio(X,Y):-hombre(X), progenitor(Z,X), progenitor(Z,P), progenitor(P,Y), X\=P.
sobrino(X,Y):-hombre(X),progenitor(Z,X), progenitor(P,Z), progenitor(P,Y), Z\=Y.
prima(X,Y):-hija(X,Z), progenitor(P,Z), progenitor(P,L), progenitor(L,Y), Z\=L .
abuelo_o_abuela(X,Y):-padre(X,Z),progenitor(Z,Y).
