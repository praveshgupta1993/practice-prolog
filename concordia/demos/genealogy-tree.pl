%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% C. Constantinides <cc@cse.concordia.ca>, 2018.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

descendant(X, Y) :- ancestor(Y, X).

father(X, Y) :- man(X), parent(X,Y).
mother(X, Y) :- woman(X), parent(X, Y).

is_father(X) :- father(X, _).
is_mother(X) :- mother(X, _).

son(X, Y) :- man(X), parent(Y, X).
daughter(X, Y) :- woman(X), parent(Y, X).

qualify(X) :- forall(man(X), parent(X, _)).

siblings(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

full_siblings1(X, Y) :- father(F, X), father(F, Y), mother(M, X), mother(M, Y), X \= Y.
full_siblings2(X, Y) :- parent(F, X), parent(F, Y), parent(M, X), parent(M, Y), X \= Y, F \= M.

uncle(U, N) :- man(U), siblings(U, P), parent(P, N).

aunt(A, N) :- woman(A), siblings(A, P), parent(P, N).

%%qualifies_for_benefits(P) :- woman(P), findall(P, parent(P, _), L), length(L, N), N >= 3.

qualifies_for_benefits(P) :- woman(P), findall(C, parent(P, C), L), length(L, N), N >= 3.
 
male_ancestor(A, P) :- father(A, P).
male_ancestor(A, P) :- father(A, P2), male_ancestor(P2, P).



full_siblings3(X, Y) :-
    parent(F, X), parent(F, Y),  parent(M, X), parent(M, Y),
    X \= Y, F \= M,
    man(X), woman(Y).