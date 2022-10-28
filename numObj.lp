numberObjectsbyEntityatTime(N,Ename,T):-
    N=#count{O: held_by(O,Eref,T)}, timeStep(T), 
    living_entity(Eref), is_a(Eref,Ename), held_by(O,Eref,T).

%!trace {"% is holding % items at time point %", E, N, T} numberObjectsbyEntityatTime(N,E,T).
%!trace {"% is holding %", Ename, Oname} held_by(Oref,Eref,T) : is_a(Oref, Oname), is_a(Eref,Ename).

%!show_trace numberObjectsbyEntityatTime(N, daniel, 2).
