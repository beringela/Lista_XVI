%posicao(3,[1,2,3,4,5,6,7],P)
posicao(X,[X|_],0).
posicao(X,[_|T],P) :- posicao(X,T,P2), !, P is P2 + 1.
%P = 2.
