

% concatenar(?L1,?L2, ?R)
% es cierto cuando R unifica con una lista que
% contiene los elementos de L1 seguidos de los de L2
% en el mismo orden.

concatenar([], L2, L2).

concatenar([Cabeza|Resto],L2, [Cabeza|R]):- concatenar(Resto,L2, R). 