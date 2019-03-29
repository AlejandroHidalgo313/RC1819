% insertar_final(+E, +L, -R)
% Es cierto si R unifica con una lista que tiene los elementos de L en el mismo orden
% con E insertado al final

insertar_final(E, [], [E]).

insertar_final(E, [Ca|Resto], [Ca|R] ) :- insertar_final(E, Resto, R).

% reverse( +List, -ListR) 
% Es cierto cuando ListR unifica con List pero  en orden inverso

reverse([], []).
reverse([Cabeza|Resto], R2) :- reverse(Resto, R), insertar_final(Cabeza, R, R2).