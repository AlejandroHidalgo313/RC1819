% Aritmetica de Peano
%
%
% suma(?X, ?Y, ?Z)
% Es cierto si Z unifica con la suma
% de X e Y en aritmetica de Peano

suma(0, Y, Y).
suma(n(X), Y, n(Z)) :- suma(X, Y, Z).

% Resta(?X, ?Y, ?Z)
% Esto es cierto si Z unifica con X - Y

resta(X, 0, X).
resta(X, n(Y), Z) :- resta(X, Y, n(Z)).

% producto(?X, ?Y, ?Z)

producto(0, _, 0).
producto(n(X), Y, Z2) :- producto(X, Y, Z), suma(Z, Y, Z2).

% p2d(+P, -D)
% cierto si D unifica con el decimal equivalente a su representacion
% en aritmetica de Peano

p2d(0,0).
p2d(n(X), R) :- p2d(X, P), R is D + 1.

% d2p(+D, -P)
% cierto si P unifica con el numero en aritmetica de Peano
% representacion equivalente a su representacion decimal

d2p(0,0).
d2p(X, n(P)) :- X2 is X - 1, d2p(X2, P).