%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% C. Constantinides <cc@cse.concordia.ca>, 2018.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

likes(noodles, deborah).
likes(max, deborah).
likes(deborah, noodles).
should_marry(X, Y):- likes(X, Y), likes(Y, X).