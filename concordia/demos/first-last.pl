%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% C. Constantinides <cc@cse.concordia.ca>, 2018.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

first(F, [F|_]).

last(L, [L]).
last(L, [H|T]) :- last(L, T).

add(X, L, [X|L]).

c([H|T], H, T).
