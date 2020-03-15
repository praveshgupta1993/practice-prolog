%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% C. Constantinides <cc@cse.concordia.ca>, 2018.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

edge(a,b).
edge(b,c).
edge(a,c).
edge(c,d).
edge(d,e).
edge(f,e).
edge(f,g).
edge(h,i).
edge(i,k).
path(N1, N2) :- edge(N1, N2).
path(N1, N2) :- edge(N1, N), path(N, N2).
is-connected(N1, N2) :- path(N1, N2).

isdirectlyconnected(N1, N2) :- write('isdirectlyconnected'), nl, edge(N1, N2).

add(X, L, [X|L]).
n(N1, N2, L) :- write('n-1: ')
                    , write(N1)
                    , write(' ')
                    , write(N2)
                    , nl
                    , edge(N1, N2)
                    , L is [N2| L]
                    , L is [N1| L].

n(N1, N2, L) :- write('n-1: ')
                    , write(N1)
                    , write(' ')
                    , write(N2)
                    , write(' ')
                    , write(L)
                    , nl
                    , edge(N1, N)
                    , n(N, N2, L).
