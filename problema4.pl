%soma([1,2,7,8],X).
soma([],0).
soma([H|T],X) :- soma(T,R), X is H + R.
%X = 18.
