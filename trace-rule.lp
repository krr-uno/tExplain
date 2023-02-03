locationB(A,B,C) :- location(A,B,C).

notInLocation(Oname,Lname,T) :- is_a(Oref,Oname), is_a(Lref,Lname), location(Oref,Lref',T), Lref!=Lref'.
notInLocation(Oname,Lname,T) :- is_a(Oref,Oname), is_aB(Lref,Lname), location(Oref,Lref',T), Lref!=Lref', not is_a(Lref',Lname).
inLocation(Oname,Lname,T) :- is_a(Oref,Oname), is_a(Lref,Lname), location(Oref,Lref,T).

numberObjectsbyEntityatTime(N,Ename,T):- N=#count{O: held_by(O,Eref,T)}, timeStep(T), living_entity(Eref), is_a(Eref,Ename).

entityCarrying(Lname,Ename,T) :- held_by(Lref,Eref,T), living_entity(Eref), timeStep(T), is_a(Eref,Ename), is_a(Lref,Lname).


possesses(X0_G,X1_G,VAR_0) :-
    possesses(X0_G,X1_G,I_G),
    held_by(X0_G,X1_G),
    not -possesses(X0_G,X1_G,VAR_0),
    dom_possesses(X0_G,X1_G,VAR_0),
    VAR_0=I_G-1,
    entity(X0_G),
    entity(X1_G),
    timeStep(I_G),
    timeStep(VAR_0).
    
possesses(D_G,O_G,TS_G) :- 
    event_donor(X_G,D_G),
    event_object(X_G,O_G),
    occurs(X_G,TS_G),
    instance(X_G,transfer),
    entity(O_G),universe(X_G),
    entity(D_G),event(X_G),
    timeStep(TS_G),
    actions(X_G).


% possesses(D_G,O_G,TS_G) :- must_possesses(D_G,O_G,TS_G).

% must_possesses(X0_G,X1_G,VAR_0) :-
%     must_possesses(X0_G,X1_G,I_G),
%     not -possesses(X0_G,X1_G,VAR_0),
%     VAR_0=I_G-1,
%     entity(X0_G),
%     entity(X1_G),
%     timeStep(I_G),
%     timeStep(VAR_0).

% !trace {"happened(%,%)", A', B} happened(A,B) : is_a(A,A').
% !trace {"possesses(D_G,O_G,TS_G)"} : possesses(D_G,O_G,TS_G).


%!trace {"% is holding [%] at time point %", E,L,T} entityCarrying(L,E,T).
% !show_trace entityCarrying(L,E,T).

top_concept(move).
top_concept(obtain).
top_concept(relinquish).
link_r(X,X'):-link(X,X').
link_r(X,X'):-link_r(X,X1),link(X1,X').
event_top_concept(E,C):-link_r(E,C),top_concept(C).

changeLoc(Oname, L1, L2name, T) :- 
    is_a(Oref,Oname), is_a(L2ref,L2name), 
    locationB(Oref, L1, T-1), 
    locationB(Oref, L2ref, T), 
    L1 != L2ref.

% !show_trace changeLoc(N, M, O, T).

locationT2(Oname,L,T) :- 
    is_a(Oref,Oname), location(Oref,L,T).

% !show_trace locationT2(A,B,C).

%!trace {"% is holding % items at time point %", E, N, T} numberObjectsbyEntityatTime(N,E,T).


%!trace {"% %d to % in sentence %", X0', A, B', X2 + 1} happened(X1,X2) : is_a(X1, X1'), event_agent(X1, X0), is_a(X0, X0'), event_top_concept(X1', A), actions_vn_destination(X1,B), is_a(B, B').
%!trace {"% %d to % in sentence %", X0', A, B', X2 + 1} happened(X1,X2) : is_a(X1, X1'), event_agent(X1, X0), is_a(X0, X0'), event_top_concept(X1', A), actions_vn_location(X1,B), is_a(B, B').
%!trace {"Since % %ed the % in sentence %", X0', A, B', X2 + 1} happened(X1,X2) : is_a(X1, X1'), event_recipient(X1, X0), event_object(X1, B), is_a(X0, X0'), event_top_concept(X1', A), is_a(B, B').
%!trace {"Since % %ed the % in sentence %", X0', A, B', X2 + 1} happened(X1,X2) : is_a(X1, X1'), event_donor(X1, X0), event_object(X1, B), is_a(X0, X0'), event_top_concept(X1', A), is_a(B, B').


%!trace {"% is located at % in sentence %", O, S', B} locationT2(O, S, B) : is_a(S, S').
%!trace {"YES % is located at % in sentence %", O, S, B} inLocation(O, S, B).
%!trace {"NO  % is not located at % in sentence %", O, S, B} notInLocation(O, S, B).

%!trace {"Location of % before % : % in sentence %", O, L2, L1',T} changeLoc(O, L1, L2, T) :  is_a(L1, L1').

%  !trace {"% is carrying % items in sentence %", E, N, T}


%!mute dom_location(X,Y,Z).
%!mute dom_actions_vn_extent(X,Y).
%!mute dom_actions_vn_coagent(X,Y).
%!mute dom_event_beneficiary(X,Y).
%!mute dom_event_site(X,Y).
%!mute dom_actions_vn_initial_location(X,Y).
%!mute dom_event_origin(X,Y).
%!mute dom_event_donor(X,Y).
%!mute dom_actions_vn_destination(X,Y).
%!mute dom_actions_vn_experiencer(X,Y).
%!mute dom_actions_vn_causer(X,Y).
%!mute dom_event_base(X,Y).
%!mute dom_event_experiencer(X,Y).
%!mute dom_actions_vn_predicate(X,Y).
%!mute dom_event_toward(X,Y).
%!mute dom_actions_vn_source(X,Y).
%!mute dom_actions_vn_product(X,Y).
%!mute dom_event_object(X,Y).
%!mute dom_actions_vn_result(X,Y).
%!mute dom_event_destination(X,Y).
%!mute dom_actions_vn_time(X,Y).
%!mute dom_event_raw_material(X,Y).
%!mute dom_actions_vn_value(X,Y).
%!mute dom_event_path(X,Y).
%!mute dom_actions_vn_actor(X,Y).
%!mute dom_actions_vn_copatient(X,Y).
%!mute dom_actions_vn_initial_state(X,Y).
%!mute dom_actions_vn_cotheme(X,Y).
%!mute dom_actions_vn_theme(X,Y).
%!mute dom_actions_vn_agent(X,Y).
%!mute dom_actions_vn_reflexive(X,Y).
%!mute dom_actions_vn_beneficiary(X,Y).
%!mute dom_actions_vn_stimulus(X,Y).
%!mute dom_actions_vn_recipient(X,Y).
%!mute dom_event_recipient(X,Y).
%!mute dom_actions_vn_patient(X,Y).
%!mute dom_actions_vn_goal(X,Y).
%!mute dom_event_away_from(X,Y).
%!mute dom_event_instrument(X,Y).
%!mute dom_actions_vn_location(X,Y).
%!mute dom_actions_vn_material(X,Y).
%!mute dom_actions_vn_instrument(X,Y).
%!mute dom_actions_vn_trajectory(X,Y).
%!mute dom_event_agent(X,Y).
%!mute dom_actions_vn_cause(X,Y).
%!mute dom_actions_vn_asset(X,Y).
%!mute dom_actions_vn_pivot(X,Y).
%!mute dom_actions_vn_topic(X,Y).
%!mute dom_event_result(X,Y).
%!mute dom_actions_vn_attribute(X,Y).
%!mute dom_is_on(X,Y,Z).
%!mute dom_is_contained(X,Y).
%!mute dom_blocked_with(X,Y,Z).
%!mute dom_is_under(X,Y,Z).
%!mute dom_is_outside(X,Y,Z).
%!mute dom_shut_out_of(X,Y,Z).
%!mute dom_is_at(X,Y,Z).
%!mute dom_is_beside(X,Y,Z).
%!mute dom_is_restrained(X,Y).
%!mute dom_is_between(X,Y,Z).
%!mute dom_is_closed(X,Y).
%!mute dom_is_below(X,Y,Z).
%!mute dom_is_confined(X,Y).
%!mute dom_is_accessible(X,Y).
%!mute dom_encloses(X,Y,Z).
%!mute dom_is_opposite(X,Y,Z).
%!mute dom_is_blocked(X,Y).
%!mute dom_has_part(X,Y,Z).
%!mute dom_is_touching(X,Y,Z).
%!mute dom_contained_in(X,Y,Z).
%!mute dom_confined_to(X,Y,Z).
%!mute dom_is_known(X,Y).
%!mute dom_content(X,Y,Z).
%!mute dom_is_along(X,Y,Z).
%!mute dom_is_near(X,Y,Z).
%!mute dom_is_behind(X,Y,Z).
%!mute dom_accessible_to(X,Y,Z).
%!mute dom_is_held(X,Y).
%!mute dom_is_inside(X,Y,Z).
%!mute dom_is_over(X,Y,Z).
%!mute dom_is_above(X,Y,Z).
%!mute dom_abuts(X,Y,Z).
%!mute dom_known_to(X,Y,Z).
%!mute dom_held_by(X,Y,Z).
%!mute dom_is_in_front_of(X,Y,Z).
%!mute dom_possesses(X,Y,Z).
