%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% C. Constantinides <cc@cse.concordia.ca>, 2018.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

start(q0).
final(q3).
transition(q0, a, q1).
transition(q0, b, q0).
transition(q1, a, q2).
transition(q1, b, q0).
transition(q2, a, q2).
transition(q2, b, q3).
transition(q3, a, q1).
transition(q3, b, q0).
accept(Xs) :- start(Q), path(Q, Xs).
path(Q, [H|T]) :- transition(Q, H, Q1), path(Q1, T).
path(Q, [ ]) :- final(Q).