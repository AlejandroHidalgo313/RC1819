% encontrar primos entre X e Y
%
% primosEntreXY(+X, +Y, -Lista)
% es cierto si lista unifica con los primos que van desde X hasta Y 
% X tiene que ser menor o igual que Y. X e Y naturales

primosEntreXY(X, Y, []) :- X > Y.
primosEntreXY(X, Y, [X|R]) :- X =< Y, X2 is X + 1, primo(X), primosEntreXY(X2, Y, R).
primosEntreXY(X, Y, R) :- X =< Y, X2 is X + 1, \+primo(X), primosEntreXY(X2, Y, R).

% primo(+X)
% es cierto si X es primo


primo(X) :- divisores(X, [X, 1]).  

% divisores(+X, -ListaDivisores)
% es cierto si ListaDivisores unifica con la lista de numeros 
% que dividen a X con resto 0

divisores(X, R) :- divisores(X, X, R).


% divisores(X, L) :- Resto is X mod Divisor, Resto = 0, divisores(X, [Divisor|L], Divisor + 1).

% divisores(+X, +Y, -Lista)
% es cierto si Lista unifica con los divisores de X que van desde 1 a Y

divisores(_, 1, [1]).
divisores(X, Y, [Y|R]) :- Y > 1,Y2 is Y - 1, divisores(X, Y2, R), 0 is X mod Y.
divisores(X, Y, R) :- Y > 1, Y2 is Y - 1, divisores(X, Y2, R), Resto is X mod Y, Resto \= 0.