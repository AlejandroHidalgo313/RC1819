%concatenar(L1, L2, R)
%Es cierto cuando R unifica con una lista que contiene los elementos de L1 seguidos de los de L2 en el mismo orden

concatenar([], L1, L1).

concatenar([Ca|Re], L1, [Ca|R] ) :- concatenar(Re, L1, R).