%posicao(1,[1,2,3,4,5,6,7],L)
posicao(0,[H|_],H).
posicao(I,[_|T],X) :- I2 is I-1, posicao(I2,T,X).
%L = 2.
