xclingo_location(A,B,C) :- location(A,B,C).

notInLocation(Oname,Lname,T) :- is_a(Oref,Oname), is_a(Lref,Lname), location(Oref,Lref',T), Lref!=Lref'.
notInLocation(Oname,Lname,T) :- is_a(Oref,Oname), is_aB(Lref,Lname), location(Oref,Lref',T), Lref!=Lref', not is_a(Lref',Lname).
inLocation(Oname,Lname,T) :- is_a(Oref,Oname), is_a(Lref,Lname), location(Oref,Lref,T).

numberObjectsbyEntityatTime(N,Ename,T):- N=#count{O: held_by(O,Eref,T)}, timeStep(T), living_entity(Eref), is_a(Eref,Ename).

entityCarrying(Lname,Ename,T) :- held_by(Lref,Eref,T), living_entity(Eref), timeStep(T), is_a(Eref,Ename), is_a(Lref,Lname).

must_possesses(D_G,O_G,TS_G) :- 
    event_donor(X_G,D_G),
    event_object(X_G,O_G),
    occurs(X_G,TS_G),
    instance(X_G,transfer),
    entity(O_G),universe(X_G),
    entity(D_G),event(X_G),
    timeStep(TS_G),
    actions(X_G).

% possesses(X0_G,X1_G,VAR_0) :-
%     possesses(X0_G,X1_G,I_G),
%     not -possesses(X0_G,X1_G,VAR_0),
%     dom_possesses(X0_G,X1_G,VAR_0),
%     VAR_0=I_G-1,
%     entity(X0_G),
%     entity(X1_G),
%     timeStep(I_G),
%     timeStep(VAR_0).

possesses(D_G,O_G,TS_G) :- must_possesses(D_G,O_G,TS_G).

must_possesses(X0_G,X1_G,VAR_0) :-
    must_possesses(X0_G,X1_G,I_G),
    not -possesses(X0_G,X1_G,VAR_0),
    VAR_0=I_G-1,
    entity(X0_G),
    entity(X1_G),
    timeStep(I_G),
    timeStep(VAR_0).

% !trace {"happened(%,%)", A', B} happened(A,B) : is_a(A,A').


% !trace {"% is holding [%] at time point %", E,L,T} entityCarrying(L,E,T).
% !show_trace entityCarrying(L,E,T).

top_concept(move).
top_concept(obtain).
top_concept(relinquish).
top_concept(dropp).
link(fire_10_10,dropp).
link_r(X,X'):-link(X,X').
link_r(X,X'):-link_r(X,X1),link(X1,X').
event_top_concept(E,C):-link_r(E,C),top_concept(C).

changeLoc(Oname, L1, L2name, T) :- 
    is_a(Oref,Oname), is_a(L2ref,L2name), 
    xclingo_location(Oref, L1, T-1), 
    xclingo_location(Oref, L2ref, T), 
    L1 != L2ref.

% !show_trace changeLoc(N, M, O, T).

xclingo_locationT2(Oname,L,T) :- 
    is_a(Oref,Oname), location(Oref,L,T). 

% !show_trace locationT2(A,B,C).

%!trace {numberObjectsbyEntityatTime(N,E,T), "% is holding % items at time point %", E, N, T}.
%!trace {happened(X1,X2), "% %d to % in sentence %", X0', A, B', X2 + 1} :- is_a(X1, X1'), event_agent(X1, X0), is_a(X0, X0'), event_top_concept(X1', A), actions_vn_destination(X1,B), is_a(B, B').
%!trace {happened(X1,X2), "% %d to % in sentence %", X0', A, B', X2 + 1} :- is_a(X1, X1'), event_agent(X1, X0), is_a(X0, X0'), event_top_concept(X1', A), actions_vn_location(X1,B), is_a(B, B').
%!trace {happened(X1,X2), "Since % %ed the % in sentence %", X0', A, B', X2 + 1} :- is_a(X1, X1'), event_recipient(X1, X0), event_object(X1, B), is_a(X0, X0'), event_top_concept(X1', A), is_a(B, B').
%!trace {happened(X1,X2), "Since % %ed the % in sentence %", X0', A, B', X2 + 1} :- is_a(X1, X1'), event_donor(X1, X0), event_object(X1, B), is_a(X0, X0'), event_top_concept(X1', A), is_a(B, B').


% !trace {"% %d to % in sentence %", X0', A, B', X2 + 1} happened(X1,X2) : is_a(X1, X1'), event_agent(X1, X0), is_a(X0, X0'), event_top_concept(X1', A), actions_vn_destination(X1,B), is_a(B, B').
% !trace {"% %d to % in sentence %", X0', A, B', X2 + 1} happened(X1,X2) : is_a(X1, X1'), event_agent(X1, X0), is_a(X0, X0'), event_top_concept(X1', A), actions_vn_location(X1,B), is_a(B, B').
% !trace {"Since % %ed the % in sentence %", X0', A, B', X2 + 1} happened(X1,X2) : is_a(X1, X1'), event_recipient(X1, X0), event_object(X1, B), is_a(X0, X0'), event_top_concept(X1', A), is_a(B, B').
% !trace {"Since % %ed the % in sentence %", X0', A, B', X2 + 1} happened(X1,X2) : is_a(X1, X1'), event_donor(X1, X0), event_object(X1, B), is_a(X0, X0'), event_top_concept(X1', A), is_a(B, B').


% !trace {"% is located at % in sentence %", O, S', B} xclingo_locationT2(O, S, B) : is_a(S, S').
% !trace {"YES % is located at % in sentence %", O, S, B} inLocation(O, S, B).
% !trace {"NO  % is not located at % in sentence %", O, S, B} notInLocation(O, S, B).

% !trace {"Location of % before % : % in sentence %", O, L2, L1',T} changeLoc(O, L1, L2, T) :  is_a(L1, L1').

%  !trace {"% is carrying % items in sentence %", E, N, T}
