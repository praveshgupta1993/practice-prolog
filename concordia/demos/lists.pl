%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% C. Constantinides <cc@cse.concordia.ca>, 2018.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

member(X, [X|_]).
member(X, [_|T]) :- member(X, T).



%%sorted([]).
%%sorted([_]).
%%sorted([A, B | T]) :- A < B, sorted([B|T]).


last(L, [L]).
last(L, [H|T]) :- last(L, T).


second_to_last(A, [A,_]).
second_to_last(A, [_|T]) :- second_to_last(A, T).