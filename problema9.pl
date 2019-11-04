%ocorrencias([1,2,7,7],7,N).
ocorrencias([],_,0).
ocorrencias([H|T],X,N) :- H == X, ocorrencias(T,X,N2), N is N2 + 1.
ocorrencias([_|T],X,N) :- ocorrencias(T,X,N).
%N = 2.
