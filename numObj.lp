%!show_trace {numberObjectsbyEntityatTime(N, mary, 4)}.


numberObjectsbyEntityatTime(N,Ename,T):-
    N=#count{O: held_by(O,Eref,T)}, timeStep(T), 
    living_entity(Eref), is_a(Eref,Ename).

%% Added to show the behaviour
% held_by(r5,r1,4).

%!trace {numberObjectsbyEntityatTime(N,E,T), "% is holding % items at time point %", E, N, T}.
%!trace {living_entity(Eref), "living_entity(%)",Ename} :- is_a(Eref,Ename).
%!show_trace {living_entity(daniel)}.

%!trace {held_by(Oref,Eref,C), "held_by(%,%,%)", Oname,Ename,C} :- is_a(Eref,Ename), is_a(Oref,Oname).
%!show_trace {held_by(A,B,C)}.