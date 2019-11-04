%diferenca([1,2,3,4],[1,2],S3).
diferenca([H|T],[],[H|T]).
diferenca([],[_|_],[]).
diferenca([],[],[]).
diferenca([H|T],S2,[H|E]) :- \+ posicao(H,S2,_), diferenca(T,S2,E).
diferenca([_|T],S2,S3) :- diferenca(T,S2,S3).
%S3 = [3,4].
