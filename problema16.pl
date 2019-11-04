%intersec([1,2,3],[2,3],[2],S4).
%uniao([1,2],[3,4],[4,5,6],S4).
%diferenca([1,2,3,4,5],[4,5],[3],S4).
intersec([],[],[]).
intersec([H|T],S2,E) :- \+ posicao(H,S2,_), intersec(T,S2,E).
intersec([H|T],[_|R],[H|E]) :- intersec(T,R,E).
intersec(S1,S2,S3,S4) :- intersec(S1,S2,R), intersec(R,S3,S4).
uniao(S1,S2,S3,S4) :- uniao(S1,S2,R), uniao(R,S3,S4).
diferenca(S1,S2,S3,S4) :- diferenca(S1,S2,R), diferenca(R,S3,S4).
%S4 = [2].
%S4 = [1,2,3,4,5,6].
%S4 = [1,2].
