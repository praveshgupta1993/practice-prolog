parent(tom, adam).
parent(tom, helen).
parent(sandra, adam).
parent(sandra, helen).
parent(michael, andrew).
parent(michael, john).
parent(eve, andrew).
parent(eve, john).
parent(helen, mark).
parent(andrew, mark).
parent(judy, roger).
parent(judy, jim).
parent(judy, janis).
parent(mark, roger).
parent(mark, jim).
parent(mark, janis).
parent(janis, daphne).
parent(peter, daphne).

% X is grandparent of Z
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).

% X is ancestor of Y
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

man(tom).
man(michael).
man(adam).
man(andrew).
man(john).
man(mark).
man(roger).
man(jim).
man(peter).
woman(sandra).
woman(eve).
woman(helen).
woman(judy).
woman(janis).
woman(daphne).

% X is father of Y
father(X, Y) :- man(X), parent(X, Y).

% X is mother of Y
mother(X, Y) :- woman(X), parent(X, Y).

% Is X a father
is_father(X) :- father(X, _).

% Is X a mother
is_mother(X) :- mother(X, _).

% Defining list
[john, eve, paul | [] ].

% X is member of List
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

last(L, [L]).
last(L, [H|T]) :- last(L, T).

size([],0).
size([H|T],N) :- size(T,N1), N is N1+1.

get_all_fathers(Set) :- findall(F, father(F, _), Lst),
 list_to_set(Lst, Set).

qualifies_for_benefits(P) :-
    woman(P),
    findall(P, parent(P, _), L),
    length(L, N),
    N >= 3.

