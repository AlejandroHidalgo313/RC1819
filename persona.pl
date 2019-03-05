
% hombre(Perosna)
% es cierto si Persona es un hombre

hombre(luis).
hombre(antonio).
hombre(jose).

% si hombre(P) -> persona(P)
persona(P) :- hombre(P).

%persona(P)
%es cierto si P es hombre o P es mujer

%si hombre(P) -> persona(P)
persona(P) :- hombre(P).
% si mujer(P) -> persona(P)
persona(P) :- mujer(P).

%mujer(Persona)
%es cierto si Persona es mujer

mujer(maria).
mujer(luisa).
mujer(marta).