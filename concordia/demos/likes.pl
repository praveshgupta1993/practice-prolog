%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% C. Constantinides <cc@cse.concordia.ca>, 2018.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

likes(bill, movies).
likes(bill, walks).
likes(james, beer).
likes(peter, beer).
likes(peter, movies).
likes(mike, soccer).
likes(mike, reading).
likes(mike, walks).
likes(michael, cars).
likes(vanessa, reading).


%% ?- findall(X,likes(X, movies),L).
%%    L = [bill, peter]

likes_to_go_out_with(X, Y) :- likes(X, Something), likes(Y, Something), X \= Y.