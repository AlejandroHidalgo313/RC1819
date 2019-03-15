% insertar_final(+E, +L, -R)
% Es cierto si R unifica con una lista que tiene los elementos de L en el mismo orden
% con E insertado al final

insertar_final(E, [], [E]).

insertar_final(E, [Ca|Resto], [Ca|R] ) :- insertar_final(E, Resto, R).