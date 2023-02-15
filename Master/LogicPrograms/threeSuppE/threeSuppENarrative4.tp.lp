
link(actions,universe).
link(move,actions).
link(locomotion,move).
link(go_to,locomotion).
link(slide_11_2,go_to).
link(slide_11_2_1,slide_11_2).
link(meander_47_7,go_to).
link(meander_47_7_1,meander_47_7).
link(leave,locomotion).
link(walk,locomotion).
link(run_51_3_2,walk).
link(run_51_3_2_2,run_51_3_2).
link(run_51_3_2_2_1,run_51_3_2_2).
link(run_51_3_2_1,run_51_3_2).
link(carry,locomotion).
link(transfer,actions).
link(lose,transfer).
link(relinquish,lose).
link(future_having_13_3,relinquish).
link(future_having_13_3_1,future_having_13_3).
link(give,relinquish).
link(donate,give).
link(throw_17_1,relinquish).
link(throw_17_1_1,throw_17_1).
link(throw_17_1_1_1,throw_17_1_1).
link(supply,relinquish).
link(feed,supply).
link(put_9_1,relinquish).
link(put_9_1_2,put_9_1).
link(put_9_1_1,put_9_1).
link(fire_10_10,lose).
link(deliver,transfer).
link(receive,transfer).
link(obtain,receive).
link(get_13_5_1,obtain).
link(get_13_5_1_1,get_13_5_1).
link(steal_10_5,obtain).
link(steal_10_5_1,steal_10_5).
link(take,obtain).
link(integers,universe).
link(thing,universe).
link(event,thing).
link(actions,event).
link(activity,event).
link(entity,thing).
link(spatial_entity,entity).
link(tangible_entity,spatial_entity).
link(physical_object,tangible_entity).
link(inanimate_object,physical_object).
link(living_entity,physical_object).
link(mary,living_entity).
link(sandra,living_entity).
link(daniel,living_entity).
link(football,living_entity).
link(john,living_entity).
link(milk,living_entity).
link(apple,living_entity).
link(place,spatial_entity).
link(kitchen,place).
link(garden,place).
link(office,place).
link(hallway,place).
link(bedroom,place).
link(bathroom,place).
instance(X_G,Y_G):-is_a(X_G,Y_G),sort_hierarchy_nodes_(Y_G),universe(X_G).
instance(X_G,Z_G):-instance(X_G,Y_G),link(Y_G,Z_G),sort_hierarchy_nodes_(Z_G),sort_hierarchy_nodes_(Y_G),universe(X_G).
subsort(X_G,Y_G):-link(X_G,Y_G),sort_hierarchy_nodes_(X_G),sort_hierarchy_nodes_(Y_G).
subsort(X_G,Z_G):-link(X_G,Y_G),subsort(Y_G,Z_G),sort_hierarchy_nodes_(X_G),sort_hierarchy_nodes_(Z_G),sort_hierarchy_nodes_(Y_G).
-subsort(X_G,Y_G):-not  subsort(X_G,Y_G),sort_hierarchy_nodes_(X_G),sort_hierarchy_nodes_(Y_G).
has_parent(X_G):-link(X_G,Y_G),sort_hierarchy_nodes_(X_G),sort_hierarchy_nodes_(Y_G).
-has_parent(X_G):-not  has_parent(X_G),sort_hierarchy_nodes_(X_G).
has_child(X_G):-link(Y_G,X_G),sort_hierarchy_nodes_(X_G),sort_hierarchy_nodes_(Y_G).
-has_child(X_G):-not  has_child(X_G),sort_hierarchy_nodes_(X_G).
source(X_G):--has_child(X_G),sort_hierarchy_nodes_(X_G).
-source(X_G):-not  source(X_G),sort_hierarchy_nodes_(X_G).
sink(X_G):--has_parent(X_G),sort_hierarchy_nodes_(X_G).
-sink(X_G):-not  sink(X_G),sort_hierarchy_nodes_(X_G).
-defined_origin(X0_G):-not  defined_origin(X0_G),event(X0_G).
-instance(X0_G,X1_G):-not  instance(X0_G,X1_G),sort_hierarchy_nodes_(X1_G),universe(X0_G).
-defined_result(X0_G):-not  defined_result(X0_G),event(X0_G).
-defined_beneficiary(X0_G):-not  defined_beneficiary(X0_G),event(X0_G).
-link(X0_G,X1_G):-not  link(X0_G,X1_G),sort_hierarchy_nodes_(X0_G),sort_hierarchy_nodes_(X1_G).
-has_child(X0_G):-not  has_child(X0_G),sort_hierarchy_nodes_(X0_G).
-defined_agent(X0_G):-not  defined_agent(X0_G),event(X0_G).
dom_event_path(X0_G,X1_G):-event_path(X0_G,X1_G),event(X0_G),spatial_entity(X1_G).
dom_event_path(X0_G,X1_G):--event_path(X0_G,X1_G),spatial_entity(X1_G),event(X0_G).
-dom_event_path(X0_G,X1_G):-not  dom_event_path(X0_G,X1_G),event(X0_G),spatial_entity(X1_G).
dom_actions_vn_copatient(X0_G,X1_G):-actions_vn_copatient(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_copatient(X0_G,X1_G):--actions_vn_copatient(X0_G,X1_G),actions(X0_G),entity(X1_G).
-dom_actions_vn_copatient(X0_G,X1_G):-not  dom_actions_vn_copatient(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_event_base(X0_G,X1_G):-event_base(X0_G,X1_G),event(X0_G),thing(X1_G).
dom_event_base(X0_G,X1_G):--event_base(X0_G,X1_G),thing(X1_G),event(X0_G).
-dom_event_base(X0_G,X1_G):-not  dom_event_base(X0_G,X1_G),thing(X1_G),event(X0_G).
dom_actions_vn_cause(X0_G,X1_G):-actions_vn_cause(X0_G,X1_G),actions(X0_G),thing(X1_G).
dom_actions_vn_cause(X0_G,X1_G):--actions_vn_cause(X0_G,X1_G),actions(X0_G),thing(X1_G).
-dom_actions_vn_cause(X0_G,X1_G):-not  dom_actions_vn_cause(X0_G,X1_G),actions(X0_G),thing(X1_G).
-defined_site(X0_G):-not  defined_site(X0_G),event(X0_G).
dom_event_origin(X0_G,X1_G):-event_origin(X0_G,X1_G),event(X0_G),spatial_entity(X1_G).
dom_event_origin(X0_G,X1_G):--event_origin(X0_G,X1_G),spatial_entity(X1_G),event(X0_G).
-dom_event_origin(X0_G,X1_G):-not  dom_event_origin(X0_G,X1_G),event(X0_G),spatial_entity(X1_G).
dom_actions_vn_patient(X0_G,X1_G):-actions_vn_patient(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_patient(X0_G,X1_G):--actions_vn_patient(X0_G,X1_G),entity(X1_G),actions(X0_G).
-dom_actions_vn_patient(X0_G,X1_G):-not  dom_actions_vn_patient(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_event_beneficiary(X0_G,X1_G):-event_beneficiary(X0_G,X1_G),living_entity(X1_G),event(X0_G).
dom_event_beneficiary(X0_G,X1_G):--event_beneficiary(X0_G,X1_G),living_entity(X1_G),event(X0_G).
-dom_event_beneficiary(X0_G,X1_G):-not  dom_event_beneficiary(X0_G,X1_G),event(X0_G),living_entity(X1_G).
-defined_base(X0_G):-not  defined_base(X0_G),event(X0_G).
dom_actions_vn_pivot(X0_G,X1_G):-actions_vn_pivot(X0_G,X1_G),thing(X1_G),actions(X0_G).
dom_actions_vn_pivot(X0_G,X1_G):--actions_vn_pivot(X0_G,X1_G),thing(X1_G),actions(X0_G).
-dom_actions_vn_pivot(X0_G,X1_G):-not  dom_actions_vn_pivot(X0_G,X1_G),actions(X0_G),thing(X1_G).
dom_actions_vn_actor(X0_G,X1_G):-actions_vn_actor(X0_G,X1_G),entity(X1_G),actions(X0_G).
dom_actions_vn_actor(X0_G,X1_G):--actions_vn_actor(X0_G,X1_G),entity(X1_G),actions(X0_G).
-dom_actions_vn_actor(X0_G,X1_G):-not  dom_actions_vn_actor(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_asset(X0_G,X1_G):-actions_vn_asset(X0_G,X1_G),thing(X1_G),actions(X0_G).
dom_actions_vn_asset(X0_G,X1_G):--actions_vn_asset(X0_G,X1_G),actions(X0_G),thing(X1_G).
-dom_actions_vn_asset(X0_G,X1_G):-not  dom_actions_vn_asset(X0_G,X1_G),thing(X1_G),actions(X0_G).
dom_event_recipient(X0_G,X1_G):-event_recipient(X0_G,X1_G),entity(X1_G),event(X0_G).
dom_event_recipient(X0_G,X1_G):--event_recipient(X0_G,X1_G),entity(X1_G),event(X0_G).
-dom_event_recipient(X0_G,X1_G):-not  dom_event_recipient(X0_G,X1_G),entity(X1_G),event(X0_G).
dom_actions_vn_initial_location(X0_G,X1_G):-actions_vn_initial_location(X0_G,X1_G),actions(X0_G),spatial_entity(X1_G).
dom_actions_vn_initial_location(X0_G,X1_G):--actions_vn_initial_location(X0_G,X1_G),actions(X0_G),spatial_entity(X1_G).
-dom_actions_vn_initial_location(X0_G,X1_G):-not  dom_actions_vn_initial_location(X0_G,X1_G),actions(X0_G),spatial_entity(X1_G).
dom_actions_vn_goal(X0_G,X1_G):-actions_vn_goal(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_goal(X0_G,X1_G):--actions_vn_goal(X0_G,X1_G),entity(X1_G),actions(X0_G).
-dom_actions_vn_goal(X0_G,X1_G):-not  dom_actions_vn_goal(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_instrument(X0_G,X1_G):-actions_vn_instrument(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_instrument(X0_G,X1_G):--actions_vn_instrument(X0_G,X1_G),entity(X1_G),actions(X0_G).
-dom_actions_vn_instrument(X0_G,X1_G):-not  dom_actions_vn_instrument(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_event_object(X0_G,X1_G):-event_object(X0_G,X1_G),entity(X1_G),event(X0_G).
dom_event_object(X0_G,X1_G):--event_object(X0_G,X1_G),entity(X1_G),event(X0_G).
-dom_event_object(X0_G,X1_G):-not  dom_event_object(X0_G,X1_G),event(X0_G),entity(X1_G).
dom_actions_vn_attribute(X0_G,X1_G):-actions_vn_attribute(X0_G,X1_G),thing(X1_G),actions(X0_G).
dom_actions_vn_attribute(X0_G,X1_G):--actions_vn_attribute(X0_G,X1_G),thing(X1_G),actions(X0_G).
-dom_actions_vn_attribute(X0_G,X1_G):-not  dom_actions_vn_attribute(X0_G,X1_G),thing(X1_G),actions(X0_G).
dom_actions_vn_trajectory(X0_G,X1_G):-actions_vn_trajectory(X0_G,X1_G),actions(X0_G),thing(X1_G).
dom_actions_vn_trajectory(X0_G,X1_G):--actions_vn_trajectory(X0_G,X1_G),thing(X1_G),actions(X0_G).
-dom_actions_vn_trajectory(X0_G,X1_G):-not  dom_actions_vn_trajectory(X0_G,X1_G),actions(X0_G),thing(X1_G).
dom_actions_vn_product(X0_G,X1_G):-actions_vn_product(X0_G,X1_G),entity(X1_G),actions(X0_G).
dom_actions_vn_product(X0_G,X1_G):--actions_vn_product(X0_G,X1_G),actions(X0_G),entity(X1_G).
-dom_actions_vn_product(X0_G,X1_G):-not  dom_actions_vn_product(X0_G,X1_G),entity(X1_G),actions(X0_G).
dom_actions_vn_topic(X0_G,X1_G):-actions_vn_topic(X0_G,X1_G),thing(X1_G),actions(X0_G).
dom_actions_vn_topic(X0_G,X1_G):--actions_vn_topic(X0_G,X1_G),actions(X0_G),thing(X1_G).
-dom_actions_vn_topic(X0_G,X1_G):-not  dom_actions_vn_topic(X0_G,X1_G),thing(X1_G),actions(X0_G).
-defined_instrument(X0_G):-not  defined_instrument(X0_G),event(X0_G).
-defined_donor(X0_G):-not  defined_donor(X0_G),event(X0_G).
dom_event_destination(X0_G,X1_G):-event_destination(X0_G,X1_G),spatial_entity(X1_G),event(X0_G).
dom_event_destination(X0_G,X1_G):--event_destination(X0_G,X1_G),event(X0_G),spatial_entity(X1_G).
-dom_event_destination(X0_G,X1_G):-not  dom_event_destination(X0_G,X1_G),event(X0_G),spatial_entity(X1_G).
-has_parent(X0_G):-not  has_parent(X0_G),sort_hierarchy_nodes_(X0_G).
dom_actions_vn_experiencer(X0_G,X1_G):-actions_vn_experiencer(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_experiencer(X0_G,X1_G):--actions_vn_experiencer(X0_G,X1_G),actions(X0_G),entity(X1_G).
-dom_actions_vn_experiencer(X0_G,X1_G):-not  dom_actions_vn_experiencer(X0_G,X1_G),entity(X1_G),actions(X0_G).
dom_actions_vn_causer(X0_G,X1_G):-actions_vn_causer(X0_G,X1_G),actions(X0_G),thing(X1_G).
dom_actions_vn_causer(X0_G,X1_G):--actions_vn_causer(X0_G,X1_G),thing(X1_G),actions(X0_G).
-dom_actions_vn_causer(X0_G,X1_G):-not  dom_actions_vn_causer(X0_G,X1_G),actions(X0_G),thing(X1_G).
dom_actions_vn_extent(X0_G,X1_G):-actions_vn_extent(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_extent(X0_G,X1_G):--actions_vn_extent(X0_G,X1_G),actions(X0_G),entity(X1_G).
-dom_actions_vn_extent(X0_G,X1_G):-not  dom_actions_vn_extent(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_event_experiencer(X0_G,X1_G):-event_experiencer(X0_G,X1_G),event(X0_G),entity(X1_G).
dom_event_experiencer(X0_G,X1_G):--event_experiencer(X0_G,X1_G),event(X0_G),entity(X1_G).
-dom_event_experiencer(X0_G,X1_G):-not  dom_event_experiencer(X0_G,X1_G),entity(X1_G),event(X0_G).
dom_actions_vn_agent(X0_G,X1_G):-actions_vn_agent(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_agent(X0_G,X1_G):--actions_vn_agent(X0_G,X1_G),entity(X1_G),actions(X0_G).
-dom_actions_vn_agent(X0_G,X1_G):-not  dom_actions_vn_agent(X0_G,X1_G),entity(X1_G),actions(X0_G).
-defined_destination(X0_G):-not  defined_destination(X0_G),event(X0_G).
dom_actions_vn_material(X0_G,X1_G):-actions_vn_material(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_material(X0_G,X1_G):--actions_vn_material(X0_G,X1_G),entity(X1_G),actions(X0_G).
-dom_actions_vn_material(X0_G,X1_G):-not  dom_actions_vn_material(X0_G,X1_G),entity(X1_G),actions(X0_G).
-sink(X0_G):-not  sink(X0_G),sort_hierarchy_nodes_(X0_G).
dom_actions_vn_predicate(X0_G,X1_G):-actions_vn_predicate(X0_G,X1_G),actions(X0_G),thing(X1_G).
dom_actions_vn_predicate(X0_G,X1_G):--actions_vn_predicate(X0_G,X1_G),thing(X1_G),actions(X0_G).
-dom_actions_vn_predicate(X0_G,X1_G):-not  dom_actions_vn_predicate(X0_G,X1_G),actions(X0_G),thing(X1_G).
-defined_path(X0_G):-not  defined_path(X0_G),event(X0_G).
-defined_recipient(X0_G):-not  defined_recipient(X0_G),event(X0_G).
dom_event_site(X0_G,X1_G):-event_site(X0_G,X1_G),spatial_entity(X1_G),event(X0_G).
dom_event_site(X0_G,X1_G):--event_site(X0_G,X1_G),event(X0_G),spatial_entity(X1_G).
-dom_event_site(X0_G,X1_G):-not  dom_event_site(X0_G,X1_G),event(X0_G),spatial_entity(X1_G).
dom_actions_vn_value(X0_G,X1_G):-actions_vn_value(X0_G,X1_G),thing(X1_G),actions(X0_G).
dom_actions_vn_value(X0_G,X1_G):--actions_vn_value(X0_G,X1_G),actions(X0_G),thing(X1_G).
-dom_actions_vn_value(X0_G,X1_G):-not  dom_actions_vn_value(X0_G,X1_G),actions(X0_G),thing(X1_G).
-is_a(X0_G,X1_G):-not  is_a(X0_G,X1_G),universe(X0_G),sort_hierarchy_nodes_(X1_G).
dom_event_instrument(X0_G,X1_G):-event_instrument(X0_G,X1_G),event(X0_G),entity(X1_G).
dom_event_instrument(X0_G,X1_G):--event_instrument(X0_G,X1_G),entity(X1_G),event(X0_G).
-dom_event_instrument(X0_G,X1_G):-not  dom_event_instrument(X0_G,X1_G),entity(X1_G),event(X0_G).
dom_actions_vn_stimulus(X0_G,X1_G):-actions_vn_stimulus(X0_G,X1_G),thing(X1_G),actions(X0_G).
dom_actions_vn_stimulus(X0_G,X1_G):--actions_vn_stimulus(X0_G,X1_G),thing(X1_G),actions(X0_G).
-dom_actions_vn_stimulus(X0_G,X1_G):-not  dom_actions_vn_stimulus(X0_G,X1_G),actions(X0_G),thing(X1_G).
-defined_toward(X0_G):-not  defined_toward(X0_G),event(X0_G).
dom_actions_vn_reflexive(X0_G,X1_G):-actions_vn_reflexive(X0_G,X1_G),actions(X0_G),thing(X1_G).
dom_actions_vn_reflexive(X0_G,X1_G):--actions_vn_reflexive(X0_G,X1_G),actions(X0_G),thing(X1_G).
-dom_actions_vn_reflexive(X0_G,X1_G):-not  dom_actions_vn_reflexive(X0_G,X1_G),thing(X1_G),actions(X0_G).
-defined_experiencer(X0_G):-not  defined_experiencer(X0_G),event(X0_G).
dom_actions_vn_location(X0_G,X1_G):-actions_vn_location(X0_G,X1_G),actions(X0_G),spatial_entity(X1_G).
dom_actions_vn_location(X0_G,X1_G):--actions_vn_location(X0_G,X1_G),spatial_entity(X1_G),actions(X0_G).
-dom_actions_vn_location(X0_G,X1_G):-not  dom_actions_vn_location(X0_G,X1_G),spatial_entity(X1_G),actions(X0_G).
dom_actions_vn_beneficiary(X0_G,X1_G):-actions_vn_beneficiary(X0_G,X1_G),living_entity(X1_G),actions(X0_G).
dom_actions_vn_beneficiary(X0_G,X1_G):--actions_vn_beneficiary(X0_G,X1_G),living_entity(X1_G),actions(X0_G).
-dom_actions_vn_beneficiary(X0_G,X1_G):-not  dom_actions_vn_beneficiary(X0_G,X1_G),living_entity(X1_G),actions(X0_G).
dom_actions_vn_cotheme(X0_G,X1_G):-actions_vn_cotheme(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_cotheme(X0_G,X1_G):--actions_vn_cotheme(X0_G,X1_G),entity(X1_G),actions(X0_G).
-dom_actions_vn_cotheme(X0_G,X1_G):-not  dom_actions_vn_cotheme(X0_G,X1_G),entity(X1_G),actions(X0_G).
dom_actions_vn_initial_state(X0_G,X1_G):-actions_vn_initial_state(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_initial_state(X0_G,X1_G):--actions_vn_initial_state(X0_G,X1_G),actions(X0_G),entity(X1_G).
-dom_actions_vn_initial_state(X0_G,X1_G):-not  dom_actions_vn_initial_state(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_event_agent(X0_G,X1_G):-event_agent(X0_G,X1_G),entity(X1_G),event(X0_G).
dom_event_agent(X0_G,X1_G):--event_agent(X0_G,X1_G),event(X0_G),entity(X1_G).
-dom_event_agent(X0_G,X1_G):-not  dom_event_agent(X0_G,X1_G),event(X0_G),entity(X1_G).
dom_actions_vn_theme(X0_G,X1_G):-actions_vn_theme(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_theme(X0_G,X1_G):--actions_vn_theme(X0_G,X1_G),entity(X1_G),actions(X0_G).
-dom_actions_vn_theme(X0_G,X1_G):-not  dom_actions_vn_theme(X0_G,X1_G),entity(X1_G),actions(X0_G).
dom_event_away_from(X0_G,X1_G):-event_away_from(X0_G,X1_G),spatial_entity(X1_G),event(X0_G).
dom_event_away_from(X0_G,X1_G):--event_away_from(X0_G,X1_G),event(X0_G),spatial_entity(X1_G).
-dom_event_away_from(X0_G,X1_G):-not  dom_event_away_from(X0_G,X1_G),event(X0_G),spatial_entity(X1_G).
dom_event_raw_material(X0_G,X1_G):-event_raw_material(X0_G,X1_G),tangible_entity(X1_G),event(X0_G).
dom_event_raw_material(X0_G,X1_G):--event_raw_material(X0_G,X1_G),event(X0_G),tangible_entity(X1_G).
-dom_event_raw_material(X0_G,X1_G):-not  dom_event_raw_material(X0_G,X1_G),event(X0_G),tangible_entity(X1_G).
-subsort(X0_G,X1_G):-not  subsort(X0_G,X1_G),sort_hierarchy_nodes_(X0_G),sort_hierarchy_nodes_(X1_G).
dom_event_donor(X0_G,X1_G):-event_donor(X0_G,X1_G),event(X0_G),entity(X1_G).
dom_event_donor(X0_G,X1_G):--event_donor(X0_G,X1_G),event(X0_G),entity(X1_G).
-dom_event_donor(X0_G,X1_G):-not  dom_event_donor(X0_G,X1_G),entity(X1_G),event(X0_G).
-defined_raw_material(X0_G):-not  defined_raw_material(X0_G),event(X0_G).
dom_event_toward(X0_G,X1_G):-event_toward(X0_G,X1_G),event(X0_G),spatial_entity(X1_G).
dom_event_toward(X0_G,X1_G):--event_toward(X0_G,X1_G),event(X0_G),spatial_entity(X1_G).
-dom_event_toward(X0_G,X1_G):-not  dom_event_toward(X0_G,X1_G),spatial_entity(X1_G),event(X0_G).
dom_actions_vn_destination(X0_G,X1_G):-actions_vn_destination(X0_G,X1_G),actions(X0_G),spatial_entity(X1_G).
dom_actions_vn_destination(X0_G,X1_G):--actions_vn_destination(X0_G,X1_G),actions(X0_G),spatial_entity(X1_G).
-dom_actions_vn_destination(X0_G,X1_G):-not  dom_actions_vn_destination(X0_G,X1_G),spatial_entity(X1_G),actions(X0_G).
dom_actions_vn_source(X0_G,X1_G):-actions_vn_source(X0_G,X1_G),actions(X0_G),spatial_entity(X1_G).
dom_actions_vn_source(X0_G,X1_G):--actions_vn_source(X0_G,X1_G),actions(X0_G),spatial_entity(X1_G).
-dom_actions_vn_source(X0_G,X1_G):-not  dom_actions_vn_source(X0_G,X1_G),actions(X0_G),spatial_entity(X1_G).
-defined_away_from(X0_G):-not  defined_away_from(X0_G),event(X0_G).
dom_actions_vn_coagent(X0_G,X1_G):-actions_vn_coagent(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_coagent(X0_G,X1_G):--actions_vn_coagent(X0_G,X1_G),entity(X1_G),actions(X0_G).
-dom_actions_vn_coagent(X0_G,X1_G):-not  dom_actions_vn_coagent(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_time(X0_G,X1_G):-actions_vn_time(X0_G,X1_G),thing(X1_G),actions(X0_G).
dom_actions_vn_time(X0_G,X1_G):--actions_vn_time(X0_G,X1_G),actions(X0_G),thing(X1_G).
-dom_actions_vn_time(X0_G,X1_G):-not  dom_actions_vn_time(X0_G,X1_G),actions(X0_G),thing(X1_G).
dom_event_result(X0_G,X1_G):-event_result(X0_G,X1_G),event(X0_G),entity(X1_G).
dom_event_result(X0_G,X1_G):--event_result(X0_G,X1_G),event(X0_G),entity(X1_G).
-dom_event_result(X0_G,X1_G):-not  dom_event_result(X0_G,X1_G),event(X0_G),entity(X1_G).
-source(X0_G):-not  source(X0_G),sort_hierarchy_nodes_(X0_G).
dom_actions_vn_recipient(X0_G,X1_G):-actions_vn_recipient(X0_G,X1_G),actions(X0_G),entity(X1_G).
dom_actions_vn_recipient(X0_G,X1_G):--actions_vn_recipient(X0_G,X1_G),actions(X0_G),entity(X1_G).
-dom_actions_vn_recipient(X0_G,X1_G):-not  dom_actions_vn_recipient(X0_G,X1_G),entity(X1_G),actions(X0_G).
-defined_object(X0_G):-not  defined_object(X0_G),event(X0_G).
dom_actions_vn_result(X0_G,X1_G):-actions_vn_result(X0_G,X1_G),thing(X1_G),actions(X0_G).
dom_actions_vn_result(X0_G,X1_G):--actions_vn_result(X0_G,X1_G),thing(X1_G),actions(X0_G).
-dom_actions_vn_result(X0_G,X1_G):-not  dom_actions_vn_result(X0_G,X1_G),thing(X1_G),actions(X0_G).
:-instance(X_G,transfer),-defined_object(X_G),event(X_G),universe(X_G).
:-instance(X_G,transfer),event_donor(X_G,D_G),-instance(D_G,tangible_entity),universe(X_G),universe(D_G),event(X_G),entity(D_G).
:-instance(X_G,transfer),event_recipient(X_G,Y_G),event_donor(X_G,Y_G),entity(Y_G),universe(X_G),event(X_G).
:-instance(X_G,deliver),-defined_recipient(X_G),universe(X_G),event(X_G).
:-instance(X_G,deliver),event_recipient(X_G,R_G),-instance(R_G,tangible_entity),entity(R_G),universe(X_G),universe(R_G),event(X_G).
:-instance(X_G,deliver),event_donor(X_G,Y_G),event_agent(X_G,Y_G),event(X_G),entity(Y_G),universe(X_G).
:-instance(X_G,deliver),event_recipient(X_G,Y_G),event_agent(X_G,Y_G),universe(X_G),entity(Y_G),event(X_G).
:-instance(X_G,lose),-defined_donor(X_G),event(X_G),universe(X_G).
:-instance(X_G,lose),event_donor(X_G,D_G),-instance(D_G,tangible_entity),universe(D_G),universe(X_G),event(X_G),entity(D_G).
:-instance(X_G,receive),-defined_recipient(X_G),event(X_G),universe(X_G).
event_donor(X_G,Y_G):-instance(X_G,fire_10_10),actions_vn_agent(X_G,Y_G),actions(X_G),event(X_G),entity(Y_G),universe(X_G).
event_agent(A_G,B_G):-instance(A_G,fire_10_10),actions_vn_agent(A_G,B_G),event(A_G),universe(A_G),entity(B_G),actions(A_G).
event_destination(A_G,B_G):-instance(A_G,fire_10_10),actions_vn_source(A_G,B_G),universe(A_G),spatial_entity(B_G),actions(A_G),event(A_G).
event_object(A_G,B_G):-instance(A_G,fire_10_10),actions_vn_theme(A_G,B_G),event(A_G),entity(B_G),actions(A_G),universe(A_G).
event_object(A_G,B_G):-instance(A_G,fire_10_10),actions_vn_goal(A_G,B_G),entity(B_G),actions(A_G),event(A_G),universe(A_G).
event_object(A_G,B_G):-instance(A_G,fire_10_10),actions_vn_attribute(A_G,B_G),entity(B_G),actions(A_G),universe(A_G),event(A_G),thing(B_G).
:-instance(X_G,move),-defined_object(X_G),event(X_G),universe(X_G).
:-instance(X_G,move),event_object(X_G,O_G),-instance(O_G,tangible_entity),event(X_G),universe(X_G),entity(O_G),universe(O_G).
:-instance(X_G,move),event_origin(X_G,Or_G),-instance(Or_G,spatial_entity),spatial_entity(Or_G),universe(X_G),event(X_G),universe(Or_G).
:-instance(X_G,move),event_destination(X_G,D_G),-instance(D_G,spatial_entity),event(X_G),universe(D_G),universe(X_G),spatial_entity(D_G).
:-instance(X_G,move),event_away_from(X_G,Aw_G),-instance(Aw_G,spatial_entity),universe(X_G),universe(Aw_G),event(X_G),spatial_entity(Aw_G).
:-instance(X_G,move),event_toward(X_G,T_G),-instance(T_G,spatial_entity),event(X_G),spatial_entity(T_G),universe(X_G),universe(T_G).
:-instance(X_G,move),event_path(X_G,P_G),-instance(P_G,spatial_entity),event(X_G),spatial_entity(P_G),universe(X_G),universe(P_G).
:-instance(X_G,move),event_object(X_G,Y_G),event_origin(X_G,Y_G),spatial_entity(Y_G),universe(X_G),entity(Y_G),event(X_G).
:-instance(X_G,move),event_object(X_G,Y_G),event_destination(X_G,Y_G),event(X_G),spatial_entity(Y_G),entity(Y_G),universe(X_G).
:-instance(X_G,move),event_object(X_G,Y_G),event_away_from(X_G,Y_G),event(X_G),universe(X_G),entity(Y_G),spatial_entity(Y_G).
:-instance(X_G,move),event_object(X_G,Y_G),event_toward(X_G,Y_G),spatial_entity(Y_G),event(X_G),entity(Y_G),universe(X_G).
:-instance(X_G,move),event_object(X_G,Y_G),event_path(X_G,Y_G),universe(X_G),event(X_G),entity(Y_G),spatial_entity(Y_G).
-event_origin(X_G,Or1_G):-instance(X_G,move),event_origin(X_G,Or_G),spatial_entity(Or1_G),spatial_entity(Or_G),Or1_G!=Or_G,event(X_G),universe(X_G).
-event_destination(X_G,D1_G):-instance(X_G,move),event_destination(X_G,D_G),spatial_entity(D1_G),spatial_entity(D_G),D1_G!=D_G,event(X_G),universe(X_G).
:-instance(X_G,locomotion),-defined_agent(X_G),event(X_G),universe(X_G).
:-instance(X_G,carry),-defined_agent(X_G),universe(X_G),event(X_G).
:-instance(X_G,carry),event_agent(X_G,A_G),-instance(A_G,tangible_entity),universe(A_G),universe(X_G),entity(A_G),event(X_G).
:-instance(X_G,go_to),-defined_destination(X_G),universe(X_G),event(X_G).
:-instance(X_G,leave),-defined_origin(X_G),universe(X_G),event(X_G).
event_object(X_G,Y_G):-instance(X_G,locomotion),event_agent(X_G,Y_G),event(X_G),entity(Y_G),universe(X_G).
event_agent(X_G,Y_G):-instance(X_G,locomotion),event_object(X_G,Y_G),entity(Y_G),universe(X_G),event(X_G).
event_agent(X_G,Y_G):-instance(X_G,run_51_3_2),actions_vn_theme(X_G,Y_G),entity(Y_G),event(X_G),actions(X_G),universe(X_G).
event_origin(X_G,Y_G):-instance(X_G,run_51_3_2),actions_vn_initial_location(X_G,Y_G),actions(X_G),spatial_entity(Y_G),event(X_G),universe(X_G).
event_destination(X_G,Y_G):-instance(X_G,run_51_3_2),actions_vn_destination(X_G,Y_G),spatial_entity(Y_G),actions(X_G),universe(X_G),event(X_G).
event_path(X_G,Y_G):-instance(X_G,run_51_3_2),actions_vn_trajectory(X_G,Y_G),spatial_entity(Y_G),universe(X_G),event(X_G),actions(X_G),thing(Y_G).
event_agent(X_G,Y_G):-instance(X_G,run_51_3_2_1),actions_vn_theme(X_G,Y_G),actions(X_G),universe(X_G),event(X_G),entity(Y_G).
event_origin(X_G,Y_G):-instance(X_G,run_51_3_2_1),actions_vn_initial_location(X_G,Y_G),universe(X_G),event(X_G),actions(X_G),spatial_entity(Y_G).
event_destination(X_G,Y_G):-instance(X_G,run_51_3_2_1),actions_vn_destination(X_G,Y_G),actions(X_G),event(X_G),spatial_entity(Y_G),universe(X_G).
event_path(X_G,Y_G):-instance(X_G,run_51_3_2_1),actions_vn_trajectory(X_G,Y_G),universe(X_G),event(X_G),thing(Y_G),actions(X_G),spatial_entity(Y_G).
:-instance(X_G,relinquish),-defined_agent(X_G),universe(X_G),event(X_G).
:-instance(X_G,relinquish),event_agent(X_G,A_G),-instance(A_G,tangible_entity),event(X_G),universe(A_G),entity(A_G),universe(X_G).
:-instance(X_G,relinquish),event_donor(X_G,D1_G),event_donor(X_G,D2_G),entity(D1_G),entity(D2_G),D1_G!=D2_G,event(X_G),universe(X_G).
:-instance(X_G,relinquish),event_agent(X_G,A_G),event_donor(X_G,D_G),entity(A_G),entity(D_G),A_G!=D_G,event(X_G),universe(X_G).
event_donor(X_G,Y_G):-instance(X_G,relinquish),event_agent(X_G,Y_G),event(X_G),entity(Y_G),universe(X_G).
:-instance(X_G,give),-defined_recipient(X_G),event(X_G),universe(X_G).
:-instance(X_G,give),event_recipient(X_G,R_G),-instance(R_G,tangible_entity),event(X_G),universe(R_G),entity(R_G),universe(X_G).
:-instance(X_G,donate),-defined_beneficiary(X_G),event(X_G),universe(X_G).
:-instance(X_G,donate),event_beneficiary(X_G,B_G),-instance(B_G,tangible_entity),event(X_G),living_entity(B_G),universe(X_G),universe(B_G).
:-instance(X_G,supply),event_object(X_G,O_G),-instance(O_G,tangible_entity),event(X_G),entity(O_G),universe(X_G),universe(O_G).
:-instance(X_G,supply),event_recipient(X_G,R_G),-instance(R_G,tangible_entity),entity(R_G),event(X_G),universe(X_G),universe(R_G).
:-instance(X_G,feed),-defined_recipient(X_G),universe(X_G),event(X_G).
:-instance(X_G,feed),event_recipient(X_G,R_G),-instance(R_G,living_entity),event(X_G),entity(R_G),universe(R_G),universe(X_G).
:-instance(X_G,feed),event_donor(X_G,D_G),-instance(D_G,living_entity),event(X_G),universe(D_G),entity(D_G),universe(X_G).
event_agent(A_G,B_G):-instance(A_G,throw_17_1),actions_vn_agent(A_G,B_G),entity(B_G),universe(A_G),actions(A_G),event(A_G).
event_destination(A_G,B_G):-instance(A_G,throw_17_1),actions_vn_destination(A_G,B_G),universe(A_G),spatial_entity(B_G),actions(A_G),event(A_G).
event_origin(A_G,B_G):-instance(A_G,throw_17_1),actions_vn_initial_location(A_G,B_G),actions(A_G),event(A_G),universe(A_G),spatial_entity(B_G).
event_result(A_G,B_G):-instance(A_G,throw_17_1),actions_vn_result(A_G,B_G),actions(A_G),thing(B_G),event(A_G),entity(B_G),universe(A_G).
event_object(A_G,B_G):-instance(A_G,throw_17_1),actions_vn_theme(A_G,B_G),actions(A_G),entity(B_G),event(A_G),universe(A_G).
event_agent(A_G,B_G):-instance(A_G,throw_17_1_1),actions_vn_agent(A_G,B_G),entity(B_G),universe(A_G),actions(A_G),event(A_G).
event_destination(A_G,B_G):-instance(A_G,throw_17_1_1),actions_vn_destination(A_G,B_G),spatial_entity(B_G),event(A_G),universe(A_G),actions(A_G).
event_origin(A_G,B_G):-instance(A_G,throw_17_1_1),actions_vn_initial_location(A_G,B_G),spatial_entity(B_G),event(A_G),universe(A_G),actions(A_G).
event_result(A_G,B_G):-instance(A_G,throw_17_1_1),actions_vn_result(A_G,B_G),event(A_G),entity(B_G),actions(A_G),universe(A_G),thing(B_G).
event_object(A_G,B_G):-instance(A_G,throw_17_1_1),actions_vn_theme(A_G,B_G),entity(B_G),universe(A_G),event(A_G),actions(A_G).
event_agent(A_G,B_G):-instance(A_G,throw_17_1_1_1),actions_vn_agent(A_G,B_G),actions(A_G),universe(A_G),entity(B_G),event(A_G).
event_destination(A_G,B_G):-instance(A_G,throw_17_1_1_1),actions_vn_destination(A_G,B_G),universe(A_G),actions(A_G),event(A_G),spatial_entity(B_G).
event_origin(A_G,B_G):-instance(A_G,throw_17_1_1_1),actions_vn_initial_location(A_G,B_G),spatial_entity(B_G),actions(A_G),event(A_G),universe(A_G).
event_result(A_G,B_G):-instance(A_G,throw_17_1_1_1),actions_vn_result(A_G,B_G),thing(B_G),universe(A_G),entity(B_G),event(A_G),actions(A_G).
event_object(A_G,B_G):-instance(A_G,throw_17_1_1_1),actions_vn_theme(A_G,B_G),actions(A_G),universe(A_G),entity(B_G),event(A_G).
event_agent(A_G,B_G):-instance(A_G,throw_17_1_1_1),actions_vn_causer(A_G,B_G),entity(B_G),universe(A_G),actions(A_G),thing(B_G),event(A_G).
event_agent(X_G,Y_G):-instance(X_G,meander_47_7),actions_vn_theme(X_G,Y_G),entity(Y_G),actions(X_G),event(X_G),universe(X_G).
event_destination(X_G,Y_G):-instance(X_G,meander_47_7),actions_vn_location(X_G,Y_G),event(X_G),spatial_entity(Y_G),universe(X_G),actions(X_G).
event_agent(X_G,Y_G):-instance(X_G,meander_47_7_1),actions_vn_theme(X_G,Y_G),entity(Y_G),actions(X_G),universe(X_G),event(X_G).
event_destination(X_G,Y_G):-instance(X_G,meander_47_7_1),actions_vn_location(X_G,Y_G),spatial_entity(Y_G),universe(X_G),event(X_G),actions(X_G).
event_agent(X_G,Y_G):-instance(X_G,receive),event_recipient(X_G,Y_G),universe(X_G),entity(Y_G),event(X_G).
event_recipient(X_G,Y_G):-instance(X_G,receive),event_agent(X_G,Y_G),entity(Y_G),universe(X_G),event(X_G).
:-instance(X_G,take),-defined_donor(X_G),event(X_G),universe(X_G).
:-instance(X_G,take),event_donor(X_G,D_G),-instance(D_G,tangible_entity),universe(X_G),event(X_G),universe(D_G),entity(D_G).
event_agent(A_G,B_G):-instance(A_G,get_13_5_1),actions_vn_agent(A_G,B_G),entity(B_G),universe(A_G),event(A_G),actions(A_G).
event_object(A_G,B_G):-instance(A_G,get_13_5_1),actions_vn_asset(A_G,B_G),event(A_G),entity(B_G),thing(B_G),actions(A_G),universe(A_G).
event_donor(A_G,B_G):-instance(A_G,get_13_5_1),actions_vn_source(A_G,B_G),event(A_G),universe(A_G),actions(A_G),spatial_entity(B_G),entity(B_G).
event_recipient(A_G,B_G):-instance(A_G,get_13_5_1),actions_vn_beneficiary(A_G,B_G),universe(A_G),actions(A_G),event(A_G),living_entity(B_G),entity(B_G).
event_object(A_G,B_G):-instance(A_G,get_13_5_1),actions_vn_theme(A_G,B_G),event(A_G),universe(A_G),actions(A_G),entity(B_G).
event_agent(A_G,B_G):-instance(A_G,get_13_5_1_1),actions_vn_agent(A_G,B_G),entity(B_G),universe(A_G),event(A_G),actions(A_G).
event_object(A_G,B_G):-instance(A_G,get_13_5_1_1),actions_vn_asset(A_G,B_G),entity(B_G),universe(A_G),thing(B_G),event(A_G),actions(A_G).
event_recipient(A_G,B_G):-instance(A_G,get_13_5_1_1),actions_vn_beneficiary(A_G,B_G),entity(B_G),universe(A_G),living_entity(B_G),event(A_G),actions(A_G).
event_donor(A_G,B_G):-instance(A_G,get_13_5_1_1),actions_vn_source(A_G,B_G),event(A_G),actions(A_G),spatial_entity(B_G),universe(A_G),entity(B_G).
event_object(A_G,B_G):-instance(A_G,get_13_5_1_1),actions_vn_theme(A_G,B_G),event(A_G),entity(B_G),actions(A_G),universe(A_G).
event_agent(X_G,Y_G):-instance(X_G,run_51_3_2_2),actions_vn_theme(X_G,Y_G),event(X_G),actions(X_G),universe(X_G),entity(Y_G).
event_origin(X_G,Y_G):-instance(X_G,run_51_3_2_2),actions_vn_initial_location(X_G,Y_G),universe(X_G),spatial_entity(Y_G),event(X_G),actions(X_G).
event_destination(X_G,Y_G):-instance(X_G,run_51_3_2_2),actions_vn_destination(X_G,Y_G),spatial_entity(Y_G),actions(X_G),event(X_G),universe(X_G).
event_path(X_G,Y_G):-instance(X_G,run_51_3_2_2),actions_vn_trajectory(X_G,Y_G),universe(X_G),thing(Y_G),event(X_G),spatial_entity(Y_G),actions(X_G).
event_destination(X_G,Y_G):-instance(X_G,run_51_3_2_2),actions_vn_result(X_G,Y_G),spatial_entity(Y_G),universe(X_G),thing(Y_G),actions(X_G),event(X_G).
event_origin(X_G,Y_G):-instance(X_G,run_51_3_2_2),actions_vn_source(X_G,Y_G),actions(X_G),spatial_entity(Y_G),event(X_G),universe(X_G).
event_agent(X_G,Y_G):-instance(X_G,run_51_3_2_2_1),actions_vn_theme(X_G,Y_G),universe(X_G),entity(Y_G),event(X_G),actions(X_G).
event_origin(X_G,Y_G):-instance(X_G,run_51_3_2_2_1),actions_vn_initial_location(X_G,Y_G),universe(X_G),spatial_entity(Y_G),event(X_G),actions(X_G).
event_destination(X_G,Y_G):-instance(X_G,run_51_3_2_2_1),actions_vn_destination(X_G,Y_G),actions(X_G),spatial_entity(Y_G),universe(X_G),event(X_G).
event_path(X_G,Y_G):-instance(X_G,run_51_3_2_2_1),actions_vn_trajectory(X_G,Y_G),actions(X_G),event(X_G),spatial_entity(Y_G),thing(Y_G),universe(X_G).
event_destination(X_G,Y_G):-instance(X_G,run_51_3_2_2_1),actions_vn_result(X_G,Y_G),universe(X_G),spatial_entity(Y_G),event(X_G),thing(Y_G),actions(X_G).
event_origin(X_G,Y_G):-instance(X_G,run_51_3_2_2_1),actions_vn_source(X_G,Y_G),spatial_entity(Y_G),event(X_G),actions(X_G),universe(X_G).
event_agent(A_G,B_G):-instance(A_G,steal_10_5),actions_vn_agent(A_G,B_G),universe(A_G),entity(B_G),actions(A_G),event(A_G).
event_beneficiary(A_G,B_G):-instance(A_G,steal_10_5),actions_vn_beneficiary(A_G,B_G),living_entity(B_G),universe(A_G),event(A_G),actions(A_G).
event_donor(A_G,B_G):-instance(A_G,steal_10_5),actions_vn_source(A_G,B_G),entity(B_G),universe(A_G),spatial_entity(B_G),actions(A_G),event(A_G).
event_object(A_G,B_G):-instance(A_G,steal_10_5),actions_vn_theme(A_G,B_G),event(A_G),actions(A_G),entity(B_G),universe(A_G).
event_agent(A_G,B_G):-instance(A_G,steal_10_5_1),actions_vn_agent(A_G,B_G),entity(B_G),actions(A_G),universe(A_G),event(A_G).
event_beneficiary(A_G,B_G):-instance(A_G,steal_10_5_1),actions_vn_beneficiary(A_G,B_G),actions(A_G),event(A_G),living_entity(B_G),universe(A_G).
event_donor(A_G,B_G):-instance(A_G,steal_10_5_1),actions_vn_source(A_G,B_G),universe(A_G),event(A_G),spatial_entity(B_G),entity(B_G),actions(A_G).
event_object(A_G,B_G):-instance(A_G,steal_10_5_1),actions_vn_theme(A_G,B_G),entity(B_G),actions(A_G),event(A_G),universe(A_G).
event_agent(A_G,B_G):-instance(A_G,put_9_1),actions_vn_agent(A_G,B_G),actions(A_G),entity(B_G),universe(A_G),event(A_G).
event_destination(A_G,B_G):-instance(A_G,put_9_1),actions_vn_destination(A_G,B_G),event(A_G),spatial_entity(B_G),universe(A_G),actions(A_G).
event_object(A_G,B_G):-instance(A_G,put_9_1),actions_vn_theme(A_G,B_G),actions(A_G),entity(B_G),event(A_G),universe(A_G).
event_origin(A_G,B_G):-instance(A_G,put_9_1),actions_vn_initial_location(A_G,B_G),spatial_entity(B_G),actions(A_G),event(A_G),universe(A_G).
event_agent(A_G,B_G):-instance(A_G,put_9_1_1),actions_vn_agent(A_G,B_G),actions(A_G),entity(B_G),universe(A_G),event(A_G).
event_destination(A_G,B_G):-instance(A_G,put_9_1_1),actions_vn_destination(A_G,B_G),universe(A_G),spatial_entity(B_G),event(A_G),actions(A_G).
event_object(A_G,B_G):-instance(A_G,put_9_1_1),actions_vn_theme(A_G,B_G),event(A_G),entity(B_G),universe(A_G),actions(A_G).
event_origin(A_G,B_G):-instance(A_G,put_9_1_1),actions_vn_initial_location(A_G,B_G),spatial_entity(B_G),event(A_G),actions(A_G),universe(A_G).
event_donor(A_G,B_G):-instance(A_G,future_having_13_3),actions_vn_agent(A_G,B_G),universe(A_G),entity(B_G),actions(A_G),event(A_G).
event_agent(A_G,B_G):-instance(A_G,future_having_13_3),actions_vn_agent(A_G,B_G),event(A_G),entity(B_G),universe(A_G),actions(A_G).
event_object(A_G,B_G):-instance(A_G,future_having_13_3),actions_vn_goal(A_G,B_G),universe(A_G),event(A_G),entity(B_G),actions(A_G).
event_object(A_G,B_G):-instance(A_G,future_having_13_3),actions_vn_theme(A_G,B_G),event(A_G),actions(A_G),universe(A_G),entity(B_G).
event_beneficiary(A_G,B_G):-instance(A_G,future_having_13_3),actions_vn_beneficiary(A_G,B_G),actions(A_G),living_entity(B_G),event(A_G),universe(A_G).
event_donor(A_G,B_G):-instance(A_G,future_having_13_3_1),actions_vn_agent(A_G,B_G),event(A_G),actions(A_G),entity(B_G),universe(A_G).
event_agent(A_G,B_G):-instance(A_G,future_having_13_3_1),actions_vn_agent(A_G,B_G),universe(A_G),entity(B_G),actions(A_G),event(A_G).
event_object(A_G,B_G):-instance(A_G,future_having_13_3_1),actions_vn_goal(A_G,B_G),event(A_G),entity(B_G),universe(A_G),actions(A_G).
event_object(A_G,B_G):-instance(A_G,future_having_13_3_1),actions_vn_theme(A_G,B_G),universe(A_G),entity(B_G),actions(A_G),event(A_G).
event_beneficiary(A_G,B_G):-instance(A_G,future_having_13_3_1),actions_vn_beneficiary(A_G,B_G),living_entity(B_G),universe(A_G),event(A_G),actions(A_G).
event_agent(X_G,Y_G):-instance(X_G,slide_11_2),actions_vn_agent(X_G,Y_G),entity(Y_G),event(X_G),universe(X_G),actions(X_G).
event_agent(X_G,Y_G):-instance(X_G,slide_11_2),actions_vn_theme(X_G,Y_G),actions(X_G),entity(Y_G),universe(X_G),event(X_G).
event_destination(X_G,Y_G):-instance(X_G,slide_11_2),actions_vn_destination(X_G,Y_G),spatial_entity(Y_G),actions(X_G),event(X_G),universe(X_G).
event_origin(X_G,Y_G):-instance(X_G,slide_11_2),actions_vn_initial_location(X_G,Y_G),actions(X_G),spatial_entity(Y_G),universe(X_G),event(X_G).
event_path(X_G,Y_G):-instance(X_G,slide_11_2),actions_vn_trajectory(X_G,Y_G),actions(X_G),universe(X_G),event(X_G),spatial_entity(Y_G),thing(Y_G).
event_agent(X_G,Y_G):-instance(X_G,slide_11_2_1),actions_vn_agent(X_G,Y_G),event(X_G),entity(Y_G),universe(X_G),actions(X_G).
event_agent(X_G,Y_G):-instance(X_G,slide_11_2_1),actions_vn_theme(X_G,Y_G),entity(Y_G),universe(X_G),event(X_G),actions(X_G).
event_destination(X_G,Y_G):-instance(X_G,slide_11_2_1),actions_vn_destination(X_G,Y_G),actions(X_G),event(X_G),spatial_entity(Y_G),universe(X_G).
event_origin(X_G,Y_G):-instance(X_G,slide_11_2_1),actions_vn_initial_location(X_G,Y_G),spatial_entity(Y_G),actions(X_G),event(X_G),universe(X_G).
event_path(X_G,Y_G):-instance(X_G,slide_11_2_1),actions_vn_trajectory(X_G,Y_G),event(X_G),actions(X_G),universe(X_G),spatial_entity(Y_G),thing(Y_G).
event_agent(A_G,B_G):-instance(A_G,put_9_1_2),actions_vn_agent(A_G,B_G),entity(B_G),event(A_G),actions(A_G),universe(A_G).
event_destination(A_G,B_G):-instance(A_G,put_9_1_2),actions_vn_destination(A_G,B_G),spatial_entity(B_G),universe(A_G),event(A_G),actions(A_G).
event_object(A_G,B_G):-instance(A_G,put_9_1_2),actions_vn_theme(A_G,B_G),event(A_G),entity(B_G),actions(A_G),universe(A_G).
event_origin(A_G,B_G):-instance(A_G,put_9_1_2),actions_vn_initial_location(A_G,B_G),actions(A_G),spatial_entity(B_G),event(A_G),universe(A_G).
defined_agent(X_G):-event_agent(X_G,Y_G),entity(Y_G),event(X_G).
defined_object(X_G):-event_object(X_G,Y_G),event(X_G),entity(Y_G).
defined_base(X_G):-event_base(X_G,Y_G),event(X_G),thing(Y_G).
defined_experiencer(X_G):-event_experiencer(X_G,Y_G),event(X_G),entity(Y_G).
defined_instrument(X_G):-event_instrument(X_G,Y_G),event(X_G),entity(Y_G).
defined_donor(X_G):-event_donor(X_G,Y_G),event(X_G),entity(Y_G).
defined_recipient(X_G):-event_recipient(X_G,Y_G),event(X_G),entity(Y_G).
defined_beneficiary(X_G):-event_beneficiary(X_G,Y_G),living_entity(Y_G),event(X_G).
defined_raw_material(X_G):-event_raw_material(X_G,Y_G),event(X_G),tangible_entity(Y_G).
defined_result(X_G):-event_result(X_G,Y_G),event(X_G),entity(Y_G).
defined_origin(X_G):-event_origin(X_G,Y_G),spatial_entity(Y_G),event(X_G).
defined_destination(X_G):-event_destination(X_G,Y_G),event(X_G),spatial_entity(Y_G).
defined_away_from(X_G):-event_away_from(X_G,Y_G),event(X_G),spatial_entity(Y_G).
defined_site(X_G):-event_site(X_G,Y_G),spatial_entity(Y_G),event(X_G).
defined_path(X_G):-event_path(X_G,Y_G),event(X_G),spatial_entity(Y_G).
defined_toward(X_G):-event_toward(X_G,Y_G),event(X_G),spatial_entity(Y_G).
is_a(r1,daniel).
is_a(r2,bedroom).
is_a(r3,office).
is_a(r4,hallway).
is_a(r5,mary).
is_a(r6,sandra).
is_a(r7,kitchen).
is_a(r8,milk).
is_a(r9,john).
is_a(r10,football).
is_a(r11,garden).
is_a(r12,bathroom).
is_a(r13,apple).
is_a(e1,run_51_3_2_1):-instance(r1,entity),instance(r2,spatial_entity).
is_a(e2,run_51_3_2_1):-instance(r1,entity),instance(r3,spatial_entity).
is_a(e3,meander_47_7):-instance(r1,entity),instance(r4,spatial_entity).
is_a(e4,run_51_3_2_1):-instance(r5,entity),instance(r2,spatial_entity).
is_a(e5,slide_11_2):-instance(r6,entity),instance(r3,spatial_entity).
is_a(e6,slide_11_2):-instance(r5,entity),instance(r7,spatial_entity).
is_a(e7,get_13_5_1_1):-instance(r6,entity),instance(r8,entity).
is_a(e8,steal_10_5):-instance(r9,entity),instance(r10,entity).
is_a(e9,run_51_3_2_1):-instance(r1,entity),instance(r11,spatial_entity).
is_a(e10,meander_47_7):-instance(r6,entity),instance(r4,spatial_entity).
is_a(e11,slide_11_2):-instance(r1,entity),instance(r2,spatial_entity).
is_a(e12,meander_47_7):-instance(r1,entity),instance(r7,spatial_entity).
is_a(e13,meander_47_7):-instance(r1,entity),instance(r11,spatial_entity).
is_a(e14,future_having_13_3):-instance(r9,entity),instance(r10,entity).
is_a(e15,fire_10_10):-instance(r6,entity),instance(r8,entity).
is_a(e16,run_51_3_2_1):-instance(r6,entity),instance(r2,spatial_entity).
is_a(e17,run_51_3_2_1):-instance(r6,entity),instance(r12,spatial_entity).
is_a(e18,run_51_3_2_1):-instance(r9,entity),instance(r4,spatial_entity).
is_a(e19,run_51_3_2_1):-instance(r6,entity),instance(r3,spatial_entity).
is_a(e20,steal_10_5):-instance(r6,entity),instance(r10,entity).
is_a(e21,run_51_3_2_1):-instance(r9,entity),instance(r12,spatial_entity).
is_a(e22,put_9_1_2):-instance(r6,entity),instance(r10,entity).
is_a(e23,get_13_5_1_1):-instance(r9,entity),instance(r13,entity).
is_a(e24,get_13_5_1_1):-instance(r6,entity),instance(r10,entity).
is_a(e25,slide_11_2):-instance(r9,entity),instance(r4,spatial_entity).
is_a(e26,throw_17_1):-instance(r9,entity),instance(r13,entity).
is_a(e27,steal_10_5):-instance(r9,entity),instance(r13,entity).
is_a(e28,run_51_3_2_1):-instance(r9,entity),instance(r12,spatial_entity).
is_a(e29,meander_47_7):-instance(r5,entity),instance(r11,spatial_entity).
is_a(e30,run_51_3_2_1):-instance(r1,entity),instance(r4,spatial_entity).
is_a(e31,steal_10_5):-instance(r1,entity),instance(r8,entity).
is_a(e32,meander_47_7):-instance(r1,entity),instance(r2,spatial_entity).
is_a(e33,throw_17_1):-instance(r9,entity),instance(r13,entity).
is_a(e34,meander_47_7):-instance(r9,entity),instance(r11,spatial_entity).
is_a(e35,throw_17_1):-instance(r1,entity),instance(r8,entity).
is_a(e36,fire_10_10):-instance(r6,entity),instance(r10,entity).
is_a(e37,get_13_5_1):-instance(r1,entity),instance(r8,entity).
is_a(e38,slide_11_2):-instance(r5,entity),instance(r12,spatial_entity).
is_a(e39,meander_47_7):-instance(r9,entity),instance(r3,spatial_entity).
is_a(e40,get_13_5_1_1):-instance(r6,entity),instance(r10,entity).
is_a(e41,fire_10_10):-instance(r1,entity),instance(r8,entity).
is_a(e42,throw_17_1):-instance(r6,entity),instance(r10,entity).
is_a(e43,slide_11_2):-instance(r1,entity),instance(r4,spatial_entity).
is_a(e44,slide_11_2):-instance(r9,entity),instance(r4,spatial_entity).
is_a(e45,steal_10_5_1):-instance(r5,entity),instance(r13,entity).
is_a(e46,fire_10_10):-instance(r5,entity),instance(r13,entity).
is_a(e47,run_51_3_2_1):-instance(r1,entity),instance(r12,spatial_entity).
is_a(e48,get_13_5_1_1):-instance(r5,entity),instance(r13,entity).
is_a(e49,meander_47_7):-instance(r1,entity),instance(r11,spatial_entity).
is_a(e50,get_13_5_1):-instance(r6,entity),instance(r10,entity).
is_a(e51,put_9_1_2):-instance(r5,entity),instance(r13,entity).
is_a(e52,future_having_13_3):-instance(r6,entity),instance(r10,entity).
is_a(e53,meander_47_7):-instance(r5,entity),instance(r4,spatial_entity).
is_a(e54,run_51_3_2_1):-instance(r1,entity),instance(r2,spatial_entity).
is_a(e55,steal_10_5_1):-instance(r1,entity),instance(r8,entity).
is_a(e56,run_51_3_2_1):-instance(r1,entity),instance(r4,spatial_entity).
is_a(e57,meander_47_7):-instance(r5,entity),instance(r7,spatial_entity).
is_a(e58,future_having_13_3):-instance(r1,entity),instance(r8,entity).
is_a(e59,run_51_3_2_1):-instance(r9,entity),instance(r11,spatial_entity).
is_a(e60,slide_11_2):-instance(r1,entity),instance(r7,spatial_entity).
is_a(e61,run_51_3_2_1):-instance(r1,entity),instance(r3,spatial_entity).
is_a(e62,run_51_3_2_1):-instance(r5,entity),instance(r11,spatial_entity).
is_a(e63,run_51_3_2_1):-instance(r5,entity),instance(r12,spatial_entity).
is_a(e64,get_13_5_1):-instance(r6,entity),instance(r10,entity).
is_a(e65,meander_47_7):-instance(r5,entity),instance(r3,spatial_entity).
is_a(e66,put_9_1_2):-instance(r6,entity),instance(r10,entity).
is_a(e67,get_13_5_1_1):-instance(r6,entity),instance(r10,entity).
is_a(e68,slide_11_2):-instance(r9,entity),instance(r4,spatial_entity).
is_a(e69,throw_17_1):-instance(r6,entity),instance(r10,entity).
is_a(e70,steal_10_5_1):-instance(r6,entity),instance(r10,entity).
is_a(e71,steal_10_5_1):-instance(r9,entity),instance(r8,entity).
is_a(e72,run_51_3_2_1):-instance(r1,entity),instance(r4,spatial_entity).
is_a(e73,meander_47_7):-instance(r5,entity),instance(r12,spatial_entity).
is_a(e74,get_13_5_1_1):-instance(r5,entity),instance(r13,entity).
is_a(e75,future_having_13_3):-instance(r9,entity),instance(r8,entity).
is_a(e76,run_51_3_2_1):-instance(r6,entity),instance(r7,spatial_entity).
is_a(e77,meander_47_7):-instance(r9,entity),instance(r12,spatial_entity).
is_a(e78,meander_47_7):-instance(r1,entity),instance(r3,spatial_entity).
is_a(e79,slide_11_2):-instance(r1,entity),instance(r4,spatial_entity).
is_a(e80,steal_10_5_1):-instance(r1,entity),instance(r8,entity).
is_a(e81,meander_47_7):-instance(r1,entity),instance(r7,spatial_entity).
is_a(e82,meander_47_7):-instance(r1,entity),instance(r3,spatial_entity).
is_a(e83,fire_10_10):-instance(r5,entity),instance(r13,entity).
is_a(e84,meander_47_7):-instance(r6,entity),instance(r2,spatial_entity).
is_a(e85,put_9_1_2):-instance(r6,entity),instance(r10,entity).
is_a(e86,get_13_5_1_1):-instance(r6,entity),instance(r10,entity).
is_a(e87,put_9_1_2):-instance(r6,entity),instance(r10,entity).
is_a(e88,steal_10_5):-instance(r5,entity),instance(r13,entity).
is_a(e89,future_having_13_3):-instance(r1,entity),instance(r8,entity).
is_a(e90,throw_17_1):-instance(r5,entity),instance(r13,entity).
is_a(e91,steal_10_5):-instance(r9,entity),instance(r13,entity).
is_a(e92,meander_47_7):-instance(r9,entity),instance(r3,spatial_entity).
actions_vn_theme(e1,r1):-instance(r1,entity).
actions_vn_destination(e1,r2):-instance(r1,entity),instance(r2,spatial_entity).
actions_vn_theme(e2,r1):-instance(r1,entity).
actions_vn_destination(e2,r3):-instance(r1,entity),instance(r3,spatial_entity).
actions_vn_theme(e3,r1):-instance(r1,entity).
actions_vn_location(e3,r4):-instance(r1,entity),instance(r4,spatial_entity).
actions_vn_theme(e4,r5):-instance(r5,entity).
actions_vn_destination(e4,r2):-instance(r5,entity),instance(r2,spatial_entity).
actions_vn_theme(e5,r6):-instance(r6,entity).
actions_vn_destination(e5,r3):-instance(r6,entity),instance(r3,spatial_entity).
actions_vn_theme(e6,r5):-instance(r5,entity).
actions_vn_destination(e6,r7):-instance(r5,entity),instance(r7,spatial_entity).
actions_vn_agent(e7,r6):-instance(r6,entity).
actions_vn_theme(e7,r8):-instance(r6,entity),instance(r8,entity).
actions_vn_agent(e8,r9):-instance(r9,entity).
actions_vn_theme(e8,r10):-instance(r9,entity),instance(r10,entity).
actions_vn_theme(e9,r1):-instance(r1,entity).
actions_vn_destination(e9,r11):-instance(r1,entity),instance(r11,spatial_entity).
actions_vn_theme(e10,r6):-instance(r6,entity).
actions_vn_location(e10,r4):-instance(r6,entity),instance(r4,spatial_entity).
actions_vn_theme(e11,r1):-instance(r1,entity).
actions_vn_destination(e11,r2):-instance(r1,entity),instance(r2,spatial_entity).
actions_vn_theme(e12,r1):-instance(r1,entity).
actions_vn_location(e12,r7):-instance(r1,entity),instance(r7,spatial_entity).
actions_vn_theme(e13,r1):-instance(r1,entity).
actions_vn_location(e13,r11):-instance(r1,entity),instance(r11,spatial_entity).
actions_vn_agent(e14,r9):-instance(r9,entity).
actions_vn_theme(e14,r10):-instance(r9,entity),instance(r10,entity).
actions_vn_agent(e15,r6):-instance(r6,entity).
actions_vn_theme(e15,r8):-instance(r6,entity),instance(r8,entity).
actions_vn_theme(e16,r6):-instance(r6,entity).
actions_vn_destination(e16,r2):-instance(r6,entity),instance(r2,spatial_entity).
actions_vn_theme(e17,r6):-instance(r6,entity).
actions_vn_destination(e17,r12):-instance(r6,entity),instance(r12,spatial_entity).
actions_vn_theme(e18,r9):-instance(r9,entity).
actions_vn_destination(e18,r4):-instance(r9,entity),instance(r4,spatial_entity).
actions_vn_theme(e19,r6):-instance(r6,entity).
actions_vn_destination(e19,r3):-instance(r6,entity),instance(r3,spatial_entity).
actions_vn_agent(e20,r6):-instance(r6,entity).
actions_vn_theme(e20,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_theme(e21,r9):-instance(r9,entity).
actions_vn_destination(e21,r12):-instance(r9,entity),instance(r12,spatial_entity).
actions_vn_agent(e22,r6):-instance(r6,entity).
actions_vn_theme(e22,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_agent(e23,r9):-instance(r9,entity).
actions_vn_theme(e23,r13):-instance(r9,entity),instance(r13,entity).
actions_vn_agent(e24,r6):-instance(r6,entity).
actions_vn_theme(e24,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_theme(e25,r9):-instance(r9,entity).
actions_vn_destination(e25,r4):-instance(r9,entity),instance(r4,spatial_entity).
actions_vn_agent(e26,r9):-instance(r9,entity).
actions_vn_theme(e26,r13):-instance(r9,entity),instance(r13,entity).
actions_vn_agent(e27,r9):-instance(r9,entity).
actions_vn_theme(e27,r13):-instance(r9,entity),instance(r13,entity).
actions_vn_theme(e28,r9):-instance(r9,entity).
actions_vn_destination(e28,r12):-instance(r9,entity),instance(r12,spatial_entity).
actions_vn_theme(e29,r5):-instance(r5,entity).
actions_vn_location(e29,r11):-instance(r5,entity),instance(r11,spatial_entity).
actions_vn_theme(e30,r1):-instance(r1,entity).
actions_vn_destination(e30,r4):-instance(r1,entity),instance(r4,spatial_entity).
actions_vn_agent(e31,r1):-instance(r1,entity).
actions_vn_theme(e31,r8):-instance(r1,entity),instance(r8,entity).
actions_vn_theme(e32,r1):-instance(r1,entity).
actions_vn_location(e32,r2):-instance(r1,entity),instance(r2,spatial_entity).
actions_vn_agent(e33,r9):-instance(r9,entity).
actions_vn_theme(e33,r13):-instance(r9,entity),instance(r13,entity).
actions_vn_theme(e34,r9):-instance(r9,entity).
actions_vn_location(e34,r11):-instance(r9,entity),instance(r11,spatial_entity).
actions_vn_agent(e35,r1):-instance(r1,entity).
actions_vn_theme(e35,r8):-instance(r1,entity),instance(r8,entity).
actions_vn_agent(e36,r6):-instance(r6,entity).
actions_vn_theme(e36,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_agent(e37,r1):-instance(r1,entity).
actions_vn_theme(e37,r8):-instance(r1,entity),instance(r8,entity).
actions_vn_theme(e38,r5):-instance(r5,entity).
actions_vn_destination(e38,r12):-instance(r5,entity),instance(r12,spatial_entity).
actions_vn_theme(e39,r9):-instance(r9,entity).
actions_vn_location(e39,r3):-instance(r9,entity),instance(r3,spatial_entity).
actions_vn_agent(e40,r6):-instance(r6,entity).
actions_vn_theme(e40,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_agent(e41,r1):-instance(r1,entity).
actions_vn_theme(e41,r8):-instance(r1,entity),instance(r8,entity).
actions_vn_agent(e42,r6):-instance(r6,entity).
actions_vn_theme(e42,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_theme(e43,r1):-instance(r1,entity).
actions_vn_destination(e43,r4):-instance(r1,entity),instance(r4,spatial_entity).
actions_vn_theme(e44,r9):-instance(r9,entity).
actions_vn_destination(e44,r4):-instance(r9,entity),instance(r4,spatial_entity).
actions_vn_agent(e45,r5):-instance(r5,entity).
actions_vn_theme(e45,r13):-instance(r5,entity),instance(r13,entity).
actions_vn_agent(e46,r5):-instance(r5,entity).
actions_vn_theme(e46,r13):-instance(r5,entity),instance(r13,entity).
actions_vn_theme(e47,r1):-instance(r1,entity).
actions_vn_destination(e47,r12):-instance(r1,entity),instance(r12,spatial_entity).
actions_vn_agent(e48,r5):-instance(r5,entity).
actions_vn_theme(e48,r13):-instance(r5,entity),instance(r13,entity).
actions_vn_theme(e49,r1):-instance(r1,entity).
actions_vn_location(e49,r11):-instance(r1,entity),instance(r11,spatial_entity).
actions_vn_agent(e50,r6):-instance(r6,entity).
actions_vn_theme(e50,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_agent(e51,r5):-instance(r5,entity).
actions_vn_theme(e51,r13):-instance(r5,entity),instance(r13,entity).
actions_vn_agent(e52,r6):-instance(r6,entity).
actions_vn_theme(e52,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_theme(e53,r5):-instance(r5,entity).
actions_vn_location(e53,r4):-instance(r5,entity),instance(r4,spatial_entity).
actions_vn_theme(e54,r1):-instance(r1,entity).
actions_vn_destination(e54,r2):-instance(r1,entity),instance(r2,spatial_entity).
actions_vn_agent(e55,r1):-instance(r1,entity).
actions_vn_theme(e55,r8):-instance(r1,entity),instance(r8,entity).
actions_vn_theme(e56,r1):-instance(r1,entity).
actions_vn_destination(e56,r4):-instance(r1,entity),instance(r4,spatial_entity).
actions_vn_theme(e57,r5):-instance(r5,entity).
actions_vn_location(e57,r7):-instance(r5,entity),instance(r7,spatial_entity).
actions_vn_agent(e58,r1):-instance(r1,entity).
actions_vn_theme(e58,r8):-instance(r1,entity),instance(r8,entity).
actions_vn_theme(e59,r9):-instance(r9,entity).
actions_vn_destination(e59,r11):-instance(r9,entity),instance(r11,spatial_entity).
actions_vn_theme(e60,r1):-instance(r1,entity).
actions_vn_destination(e60,r7):-instance(r1,entity),instance(r7,spatial_entity).
actions_vn_theme(e61,r1):-instance(r1,entity).
actions_vn_destination(e61,r3):-instance(r1,entity),instance(r3,spatial_entity).
actions_vn_theme(e62,r5):-instance(r5,entity).
actions_vn_destination(e62,r11):-instance(r5,entity),instance(r11,spatial_entity).
actions_vn_theme(e63,r5):-instance(r5,entity).
actions_vn_destination(e63,r12):-instance(r5,entity),instance(r12,spatial_entity).
actions_vn_agent(e64,r6):-instance(r6,entity).
actions_vn_theme(e64,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_theme(e65,r5):-instance(r5,entity).
actions_vn_location(e65,r3):-instance(r5,entity),instance(r3,spatial_entity).
actions_vn_agent(e66,r6):-instance(r6,entity).
actions_vn_theme(e66,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_agent(e67,r6):-instance(r6,entity).
actions_vn_theme(e67,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_theme(e68,r9):-instance(r9,entity).
actions_vn_destination(e68,r4):-instance(r9,entity),instance(r4,spatial_entity).
actions_vn_agent(e69,r6):-instance(r6,entity).
actions_vn_theme(e69,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_agent(e70,r6):-instance(r6,entity).
actions_vn_theme(e70,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_agent(e71,r9):-instance(r9,entity).
actions_vn_theme(e71,r8):-instance(r9,entity),instance(r8,entity).
actions_vn_theme(e72,r1):-instance(r1,entity).
actions_vn_destination(e72,r4):-instance(r1,entity),instance(r4,spatial_entity).
actions_vn_theme(e73,r5):-instance(r5,entity).
actions_vn_location(e73,r12):-instance(r5,entity),instance(r12,spatial_entity).
actions_vn_agent(e74,r5):-instance(r5,entity).
actions_vn_theme(e74,r13):-instance(r5,entity),instance(r13,entity).
actions_vn_agent(e75,r9):-instance(r9,entity).
actions_vn_theme(e75,r8):-instance(r9,entity),instance(r8,entity).
actions_vn_theme(e76,r6):-instance(r6,entity).
actions_vn_destination(e76,r7):-instance(r6,entity),instance(r7,spatial_entity).
actions_vn_theme(e77,r9):-instance(r9,entity).
actions_vn_location(e77,r12):-instance(r9,entity),instance(r12,spatial_entity).
actions_vn_theme(e78,r1):-instance(r1,entity).
actions_vn_location(e78,r3):-instance(r1,entity),instance(r3,spatial_entity).
actions_vn_theme(e79,r1):-instance(r1,entity).
actions_vn_destination(e79,r4):-instance(r1,entity),instance(r4,spatial_entity).
actions_vn_agent(e80,r1):-instance(r1,entity).
actions_vn_theme(e80,r8):-instance(r1,entity),instance(r8,entity).
actions_vn_theme(e81,r1):-instance(r1,entity).
actions_vn_location(e81,r7):-instance(r1,entity),instance(r7,spatial_entity).
actions_vn_theme(e82,r1):-instance(r1,entity).
actions_vn_location(e82,r3):-instance(r1,entity),instance(r3,spatial_entity).
actions_vn_agent(e83,r5):-instance(r5,entity).
actions_vn_theme(e83,r13):-instance(r5,entity),instance(r13,entity).
actions_vn_theme(e84,r6):-instance(r6,entity).
actions_vn_location(e84,r2):-instance(r6,entity),instance(r2,spatial_entity).
actions_vn_agent(e85,r6):-instance(r6,entity).
actions_vn_theme(e85,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_agent(e86,r6):-instance(r6,entity).
actions_vn_theme(e86,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_agent(e87,r6):-instance(r6,entity).
actions_vn_theme(e87,r10):-instance(r6,entity),instance(r10,entity).
actions_vn_agent(e88,r5):-instance(r5,entity).
actions_vn_theme(e88,r13):-instance(r5,entity),instance(r13,entity).
actions_vn_agent(e89,r1):-instance(r1,entity).
actions_vn_theme(e89,r8):-instance(r1,entity),instance(r8,entity).
actions_vn_agent(e90,r5):-instance(r5,entity).
actions_vn_theme(e90,r13):-instance(r5,entity),instance(r13,entity).
actions_vn_agent(e91,r9):-instance(r9,entity).
actions_vn_theme(e91,r13):-instance(r9,entity),instance(r13,entity).
actions_vn_theme(e92,r9):-instance(r9,entity).
actions_vn_location(e92,r3):-instance(r9,entity),instance(r3,spatial_entity).
is_above(X0_G,X1_G,VAR_0):-is_above(X0_G,X1_G,I_G),not  -is_above(X0_G,X1_G,VAR_1),dom_is_above(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X1_G),timeStep(VAR_0),spatial_entity(X0_G),timeStep(VAR_2),timeStep(VAR_1),timeStep(I_G).
-is_above(X0_G,X1_G,VAR_0):--is_above(X0_G,X1_G,I_G),not  is_above(X0_G,X1_G,VAR_1),dom_is_above(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_1),timeStep(I_G),timeStep(VAR_2),timeStep(VAR_0).
dom_is_above(X0_G,X1_G,I_G):-is_above(X0_G,X1_G,I_G),timeStep(I_G),spatial_entity(X1_G),spatial_entity(X0_G).
dom_is_above(X0_G,X1_G,I_G):--is_above(X0_G,X1_G,I_G),timeStep(I_G),spatial_entity(X1_G),spatial_entity(X0_G).
dom_is_above(X0_G,X1_G,VAR_0):-dom_is_above(X0_G,X1_G,I_G),not  -dom_is_above(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X1_G),timeStep(I_G),timeStep(VAR_0),spatial_entity(X0_G),timeStep(VAR_1).
-dom_is_above(X0_G,X1_G,VAR_0):--dom_is_above(X0_G,X1_G,I_G),not  dom_is_above(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(I_G),spatial_entity(X0_G),timeStep(VAR_0),spatial_entity(X1_G),timeStep(VAR_1).
is_opposite(X0_G,X1_G,VAR_0):-is_opposite(X0_G,X1_G,I_G),not  -is_opposite(X0_G,X1_G,VAR_1),dom_is_opposite(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),timeStep(I_G),spatial_entity(X1_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(VAR_2).
-is_opposite(X0_G,X1_G,VAR_0):--is_opposite(X0_G,X1_G,I_G),not  is_opposite(X0_G,X1_G,VAR_1),dom_is_opposite(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(I_G),timeStep(VAR_2).
dom_is_opposite(X0_G,X1_G,I_G):-is_opposite(X0_G,X1_G,I_G),spatial_entity(X0_G),timeStep(I_G),spatial_entity(X1_G).
dom_is_opposite(X0_G,X1_G,I_G):--is_opposite(X0_G,X1_G,I_G),timeStep(I_G),spatial_entity(X0_G),spatial_entity(X1_G).
dom_is_opposite(X0_G,X1_G,VAR_0):-dom_is_opposite(X0_G,X1_G,I_G),not  -dom_is_opposite(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X0_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_1),spatial_entity(X1_G).
-dom_is_opposite(X0_G,X1_G,VAR_0):--dom_is_opposite(X0_G,X1_G,I_G),not  dom_is_opposite(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_1),timeStep(I_G),spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_0).
possesses(X0_G,X1_G,VAR_0):-possesses(X0_G,X1_G,I_G),not  -possesses(X0_G,X1_G,VAR_1),dom_possesses(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,entity(X0_G),entity(X1_G),timeStep(VAR_2),timeStep(VAR_1),timeStep(VAR_0),timeStep(I_G).
-possesses(X0_G,X1_G,VAR_0):--possesses(X0_G,X1_G,I_G),not  possesses(X0_G,X1_G,VAR_1),dom_possesses(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,entity(X0_G),entity(X1_G),timeStep(VAR_1),timeStep(I_G),timeStep(VAR_2),timeStep(VAR_0).
dom_possesses(X0_G,X1_G,I_G):-possesses(X0_G,X1_G,I_G),entity(X0_G),timeStep(I_G),entity(X1_G).
dom_possesses(X0_G,X1_G,I_G):--possesses(X0_G,X1_G,I_G),timeStep(I_G),entity(X1_G),entity(X0_G).
dom_possesses(X0_G,X1_G,VAR_0):-dom_possesses(X0_G,X1_G,I_G),not  -dom_possesses(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,entity(X1_G),timeStep(VAR_0),entity(X0_G),timeStep(I_G),timeStep(VAR_1).
-dom_possesses(X0_G,X1_G,VAR_0):--dom_possesses(X0_G,X1_G,I_G),not  dom_possesses(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,entity(X0_G),entity(X1_G),timeStep(I_G),timeStep(VAR_0),timeStep(VAR_1).
encloses(X0_G,X1_G,VAR_0):-encloses(X0_G,X1_G,I_G),not  -encloses(X0_G,X1_G,VAR_1),dom_encloses(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_2),spatial_entity(X1_G),spatial_entity(X0_G),timeStep(VAR_1),timeStep(VAR_0),timeStep(I_G).
-encloses(X0_G,X1_G,VAR_0):--encloses(X0_G,X1_G,I_G),not  encloses(X0_G,X1_G,VAR_1),dom_encloses(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),spatial_entity(X1_G),timeStep(I_G),timeStep(VAR_2),timeStep(VAR_0),timeStep(VAR_1).
dom_encloses(X0_G,X1_G,I_G):-encloses(X0_G,X1_G,I_G),spatial_entity(X1_G),timeStep(I_G),spatial_entity(X0_G).
dom_encloses(X0_G,X1_G,I_G):--encloses(X0_G,X1_G,I_G),spatial_entity(X0_G),spatial_entity(X1_G),timeStep(I_G).
dom_encloses(X0_G,X1_G,VAR_0):-dom_encloses(X0_G,X1_G,I_G),not  -dom_encloses(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X1_G),timeStep(VAR_0),spatial_entity(X0_G),timeStep(I_G),timeStep(VAR_1).
-dom_encloses(X0_G,X1_G,VAR_0):--dom_encloses(X0_G,X1_G,I_G),not  dom_encloses(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(I_G).
location(X0_G,X1_G,VAR_0):-location(X0_G,X1_G,I_G),not  -location(X0_G,X1_G,VAR_1),dom_location(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_1),tangible_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_2).
-location(X0_G,X1_G,VAR_0):--location(X0_G,X1_G,I_G),not  location(X0_G,X1_G,VAR_1),dom_location(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X1_G),tangible_entity(X0_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(I_G),timeStep(VAR_2).
dom_location(X0_G,X1_G,I_G):-location(X0_G,X1_G,I_G),timeStep(I_G),spatial_entity(X1_G),tangible_entity(X0_G).
dom_location(X0_G,X1_G,I_G):--location(X0_G,X1_G,I_G),tangible_entity(X0_G),spatial_entity(X1_G),timeStep(I_G).
dom_location(X0_G,X1_G,VAR_0):-dom_location(X0_G,X1_G,I_G),not  -dom_location(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_1),tangible_entity(X0_G),spatial_entity(X1_G),timeStep(I_G),timeStep(VAR_0).
-dom_location(X0_G,X1_G,VAR_0):--dom_location(X0_G,X1_G,I_G),not  dom_location(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,tangible_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(I_G).
is_contained(X0_G,VAR_0):-is_contained(X0_G,I_G),not  -is_contained(X0_G,VAR_1),dom_is_contained(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,tangible_entity(X0_G),timeStep(VAR_2),timeStep(VAR_1),timeStep(I_G),timeStep(VAR_0).
-is_contained(X0_G,VAR_0):--is_contained(X0_G,I_G),not  is_contained(X0_G,VAR_1),dom_is_contained(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(I_G),tangible_entity(X0_G),timeStep(VAR_1),timeStep(VAR_0),timeStep(VAR_2).
dom_is_contained(X0_G,I_G):-is_contained(X0_G,I_G),timeStep(I_G),tangible_entity(X0_G).
dom_is_contained(X0_G,I_G):--is_contained(X0_G,I_G),tangible_entity(X0_G),timeStep(I_G).
dom_is_contained(X0_G,VAR_0):-dom_is_contained(X0_G,I_G),not  -dom_is_contained(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,tangible_entity(X0_G),timeStep(I_G),timeStep(VAR_1),timeStep(VAR_0).
-dom_is_contained(X0_G,VAR_0):--dom_is_contained(X0_G,I_G),not  dom_is_contained(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(I_G),timeStep(VAR_0),tangible_entity(X0_G),timeStep(VAR_1).
is_under(X0_G,X1_G,VAR_0):-is_under(X0_G,X1_G,I_G),not  -is_under(X0_G,X1_G,VAR_1),dom_is_under(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X1_G),timeStep(VAR_1),spatial_entity(X0_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_2).
-is_under(X0_G,X1_G,VAR_0):--is_under(X0_G,X1_G,I_G),not  is_under(X0_G,X1_G,VAR_1),dom_is_under(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(I_G),spatial_entity(X1_G),timeStep(VAR_1),spatial_entity(X0_G),timeStep(VAR_0),timeStep(VAR_2).
dom_is_under(X0_G,X1_G,I_G):-is_under(X0_G,X1_G,I_G),timeStep(I_G),spatial_entity(X0_G),spatial_entity(X1_G).
dom_is_under(X0_G,X1_G,I_G):--is_under(X0_G,X1_G,I_G),spatial_entity(X0_G),timeStep(I_G),spatial_entity(X1_G).
dom_is_under(X0_G,X1_G,VAR_0):-dom_is_under(X0_G,X1_G,I_G),not  -dom_is_under(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_1),spatial_entity(X0_G),spatial_entity(X1_G),timeStep(I_G),timeStep(VAR_0).
-dom_is_under(X0_G,X1_G,VAR_0):--dom_is_under(X0_G,X1_G,I_G),not  dom_is_under(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X0_G),timeStep(VAR_1),timeStep(I_G),spatial_entity(X1_G),timeStep(VAR_0).
accessible_to(X0_G,X1_G,VAR_0):-accessible_to(X0_G,X1_G,I_G),not  -accessible_to(X0_G,X1_G,VAR_1),dom_accessible_to(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,thing(X1_G),timeStep(VAR_1),timeStep(VAR_2),timeStep(I_G),entity(X0_G),timeStep(VAR_0).
-accessible_to(X0_G,X1_G,VAR_0):--accessible_to(X0_G,X1_G,I_G),not  accessible_to(X0_G,X1_G,VAR_1),dom_accessible_to(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_1),timeStep(VAR_2),timeStep(VAR_0),thing(X1_G),entity(X0_G),timeStep(I_G).
dom_accessible_to(X0_G,X1_G,I_G):-accessible_to(X0_G,X1_G,I_G),entity(X0_G),timeStep(I_G),thing(X1_G).
dom_accessible_to(X0_G,X1_G,I_G):--accessible_to(X0_G,X1_G,I_G),thing(X1_G),timeStep(I_G),entity(X0_G).
dom_accessible_to(X0_G,X1_G,VAR_0):-dom_accessible_to(X0_G,X1_G,I_G),not  -dom_accessible_to(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_1),thing(X1_G),entity(X0_G),timeStep(VAR_0),timeStep(I_G).
-dom_accessible_to(X0_G,X1_G,VAR_0):--dom_accessible_to(X0_G,X1_G,I_G),not  dom_accessible_to(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,thing(X1_G),entity(X0_G),timeStep(I_G),timeStep(VAR_1),timeStep(VAR_0).
blocked_with(X0_G,X1_G,VAR_0):-blocked_with(X0_G,X1_G,I_G),not  -blocked_with(X0_G,X1_G,VAR_1),dom_blocked_with(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_0),spatial_entity(X0_G),entity(X1_G),timeStep(VAR_1),timeStep(I_G),timeStep(VAR_2).
-blocked_with(X0_G,X1_G,VAR_0):--blocked_with(X0_G,X1_G,I_G),not  blocked_with(X0_G,X1_G,VAR_1),dom_blocked_with(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),timeStep(VAR_0),timeStep(VAR_1),entity(X1_G),timeStep(VAR_2),timeStep(I_G).
dom_blocked_with(X0_G,X1_G,I_G):-blocked_with(X0_G,X1_G,I_G),spatial_entity(X0_G),timeStep(I_G),entity(X1_G).
dom_blocked_with(X0_G,X1_G,I_G):--blocked_with(X0_G,X1_G,I_G),spatial_entity(X0_G),entity(X1_G),timeStep(I_G).
dom_blocked_with(X0_G,X1_G,VAR_0):-dom_blocked_with(X0_G,X1_G,I_G),not  -dom_blocked_with(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(I_G),spatial_entity(X0_G),timeStep(VAR_0),entity(X1_G),timeStep(VAR_1).
-dom_blocked_with(X0_G,X1_G,VAR_0):--dom_blocked_with(X0_G,X1_G,I_G),not  dom_blocked_with(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X0_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_1),entity(X1_G).
shut_out_of(X0_G,X1_G,VAR_0):-shut_out_of(X0_G,X1_G,I_G),not  -shut_out_of(X0_G,X1_G,VAR_1),dom_shut_out_of(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,tangible_entity(X1_G),tangible_entity(X0_G),timeStep(I_G),timeStep(VAR_2),timeStep(VAR_1),timeStep(VAR_0).
-shut_out_of(X0_G,X1_G,VAR_0):--shut_out_of(X0_G,X1_G,I_G),not  shut_out_of(X0_G,X1_G,VAR_1),dom_shut_out_of(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,tangible_entity(X1_G),timeStep(VAR_0),tangible_entity(X0_G),timeStep(I_G),timeStep(VAR_1),timeStep(VAR_2).
dom_shut_out_of(X0_G,X1_G,I_G):-shut_out_of(X0_G,X1_G,I_G),tangible_entity(X0_G),tangible_entity(X1_G),timeStep(I_G).
dom_shut_out_of(X0_G,X1_G,I_G):--shut_out_of(X0_G,X1_G,I_G),tangible_entity(X1_G),timeStep(I_G),tangible_entity(X0_G).
dom_shut_out_of(X0_G,X1_G,VAR_0):-dom_shut_out_of(X0_G,X1_G,I_G),not  -dom_shut_out_of(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,tangible_entity(X1_G),tangible_entity(X0_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_1).
-dom_shut_out_of(X0_G,X1_G,VAR_0):--dom_shut_out_of(X0_G,X1_G,I_G),not  dom_shut_out_of(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,tangible_entity(X0_G),timeStep(VAR_0),timeStep(I_G),tangible_entity(X1_G),timeStep(VAR_1).
is_confined(X0_G,VAR_0):-is_confined(X0_G,I_G),not  -is_confined(X0_G,VAR_1),dom_is_confined(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_0),timeStep(VAR_1),timeStep(VAR_2),tangible_entity(X0_G),timeStep(I_G).
-is_confined(X0_G,VAR_0):--is_confined(X0_G,I_G),not  is_confined(X0_G,VAR_1),dom_is_confined(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_0),timeStep(I_G),tangible_entity(X0_G),timeStep(VAR_2),timeStep(VAR_1).
dom_is_confined(X0_G,I_G):-is_confined(X0_G,I_G),tangible_entity(X0_G),timeStep(I_G).
dom_is_confined(X0_G,I_G):--is_confined(X0_G,I_G),timeStep(I_G),tangible_entity(X0_G).
dom_is_confined(X0_G,VAR_0):-dom_is_confined(X0_G,I_G),not  -dom_is_confined(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(I_G),timeStep(VAR_1),tangible_entity(X0_G),timeStep(VAR_0).
-dom_is_confined(X0_G,VAR_0):--dom_is_confined(X0_G,I_G),not  dom_is_confined(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,tangible_entity(X0_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_1).
content(X0_G,X1_G,VAR_0):-content(X0_G,X1_G,I_G),not  -content(X0_G,X1_G,VAR_1),dom_content(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,entity(X1_G),tangible_entity(X0_G),timeStep(VAR_1),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_2).
-content(X0_G,X1_G,VAR_0):--content(X0_G,X1_G,I_G),not  content(X0_G,X1_G,VAR_1),dom_content(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,tangible_entity(X0_G),timeStep(I_G),timeStep(VAR_0),entity(X1_G),timeStep(VAR_2),timeStep(VAR_1).
dom_content(X0_G,X1_G,I_G):-content(X0_G,X1_G,I_G),timeStep(I_G),entity(X1_G),tangible_entity(X0_G).
dom_content(X0_G,X1_G,I_G):--content(X0_G,X1_G,I_G),entity(X1_G),timeStep(I_G),tangible_entity(X0_G).
dom_content(X0_G,X1_G,VAR_0):-dom_content(X0_G,X1_G,I_G),not  -dom_content(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,tangible_entity(X0_G),entity(X1_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(I_G).
-dom_content(X0_G,X1_G,VAR_0):--dom_content(X0_G,X1_G,I_G),not  dom_content(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(I_G),tangible_entity(X0_G),entity(X1_G),timeStep(VAR_1),timeStep(VAR_0).
held_by(X0_G,X1_G,VAR_0):-held_by(X0_G,X1_G,I_G),not  -held_by(X0_G,X1_G,VAR_1),dom_held_by(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_0),tangible_entity(X1_G),tangible_entity(X0_G),timeStep(I_G),timeStep(VAR_1),timeStep(VAR_2).
-held_by(X0_G,X1_G,VAR_0):--held_by(X0_G,X1_G,I_G),not  held_by(X0_G,X1_G,VAR_1),dom_held_by(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(I_G),timeStep(VAR_2),tangible_entity(X1_G),tangible_entity(X0_G),timeStep(VAR_1),timeStep(VAR_0).
dom_held_by(X0_G,X1_G,I_G):-held_by(X0_G,X1_G,I_G),tangible_entity(X1_G),tangible_entity(X0_G),timeStep(I_G).
dom_held_by(X0_G,X1_G,I_G):--held_by(X0_G,X1_G,I_G),tangible_entity(X1_G),timeStep(I_G),tangible_entity(X0_G).
dom_held_by(X0_G,X1_G,VAR_0):-dom_held_by(X0_G,X1_G,I_G),not  -dom_held_by(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_1),tangible_entity(X0_G),timeStep(I_G),tangible_entity(X1_G),timeStep(VAR_0).
-dom_held_by(X0_G,X1_G,VAR_0):--dom_held_by(X0_G,X1_G,I_G),not  dom_held_by(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,tangible_entity(X1_G),timeStep(VAR_0),tangible_entity(X0_G),timeStep(I_G),timeStep(VAR_1).
is_outside(X0_G,X1_G,VAR_0):-is_outside(X0_G,X1_G,I_G),not  -is_outside(X0_G,X1_G,VAR_1),dom_is_outside(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X1_G),timeStep(VAR_1),spatial_entity(X0_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_2).
-is_outside(X0_G,X1_G,VAR_0):--is_outside(X0_G,X1_G,I_G),not  is_outside(X0_G,X1_G,VAR_1),dom_is_outside(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(I_G),timeStep(VAR_2),spatial_entity(X1_G),spatial_entity(X0_G),timeStep(VAR_0),timeStep(VAR_1).
dom_is_outside(X0_G,X1_G,I_G):-is_outside(X0_G,X1_G,I_G),spatial_entity(X1_G),spatial_entity(X0_G),timeStep(I_G).
dom_is_outside(X0_G,X1_G,I_G):--is_outside(X0_G,X1_G,I_G),spatial_entity(X1_G),timeStep(I_G),spatial_entity(X0_G).
dom_is_outside(X0_G,X1_G,VAR_0):-dom_is_outside(X0_G,X1_G,I_G),not  -dom_is_outside(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X1_G),spatial_entity(X0_G),timeStep(I_G),timeStep(VAR_0),timeStep(VAR_1).
-dom_is_outside(X0_G,X1_G,VAR_0):--dom_is_outside(X0_G,X1_G,I_G),not  dom_is_outside(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_1),spatial_entity(X0_G),timeStep(I_G),spatial_entity(X1_G),timeStep(VAR_0).
is_blocked(X0_G,VAR_0):-is_blocked(X0_G,I_G),not  -is_blocked(X0_G,VAR_1),dom_is_blocked(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),timeStep(I_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(VAR_2).
-is_blocked(X0_G,VAR_0):--is_blocked(X0_G,I_G),not  is_blocked(X0_G,VAR_1),dom_is_blocked(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(I_G),spatial_entity(X0_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(VAR_2).
dom_is_blocked(X0_G,I_G):-is_blocked(X0_G,I_G),spatial_entity(X0_G),timeStep(I_G).
dom_is_blocked(X0_G,I_G):--is_blocked(X0_G,I_G),timeStep(I_G),spatial_entity(X0_G).
dom_is_blocked(X0_G,VAR_0):-dom_is_blocked(X0_G,I_G),not  -dom_is_blocked(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X0_G),timeStep(I_G),timeStep(VAR_1),timeStep(VAR_0).
-dom_is_blocked(X0_G,VAR_0):--dom_is_blocked(X0_G,I_G),not  dom_is_blocked(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_0),spatial_entity(X0_G),timeStep(I_G),timeStep(VAR_1).
is_known(X0_G,VAR_0):-is_known(X0_G,I_G),not  -is_known(X0_G,VAR_1),dom_is_known(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_0),entity(X0_G),timeStep(I_G),timeStep(VAR_2),timeStep(VAR_1).
-is_known(X0_G,VAR_0):--is_known(X0_G,I_G),not  is_known(X0_G,VAR_1),dom_is_known(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_2),entity(X0_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(I_G).
dom_is_known(X0_G,I_G):-is_known(X0_G,I_G),timeStep(I_G),entity(X0_G).
dom_is_known(X0_G,I_G):--is_known(X0_G,I_G),timeStep(I_G),entity(X0_G).
dom_is_known(X0_G,VAR_0):-dom_is_known(X0_G,I_G),not  -dom_is_known(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,entity(X0_G),timeStep(VAR_1),timeStep(VAR_0),timeStep(I_G).
-dom_is_known(X0_G,VAR_0):--dom_is_known(X0_G,I_G),not  dom_is_known(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,entity(X0_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_1).
confined_to(X0_G,X1_G,VAR_0):-confined_to(X0_G,X1_G,I_G),not  -confined_to(X0_G,X1_G,VAR_1),dom_confined_to(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(I_G),tangible_entity(X0_G),timeStep(VAR_2),tangible_entity(X1_G),timeStep(VAR_0),timeStep(VAR_1).
-confined_to(X0_G,X1_G,VAR_0):--confined_to(X0_G,X1_G,I_G),not  confined_to(X0_G,X1_G,VAR_1),dom_confined_to(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_0),tangible_entity(X0_G),tangible_entity(X1_G),timeStep(VAR_1),timeStep(I_G),timeStep(VAR_2).
dom_confined_to(X0_G,X1_G,I_G):-confined_to(X0_G,X1_G,I_G),timeStep(I_G),tangible_entity(X0_G),tangible_entity(X1_G).
dom_confined_to(X0_G,X1_G,I_G):--confined_to(X0_G,X1_G,I_G),timeStep(I_G),tangible_entity(X0_G),tangible_entity(X1_G).
dom_confined_to(X0_G,X1_G,VAR_0):-dom_confined_to(X0_G,X1_G,I_G),not  -dom_confined_to(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,tangible_entity(X0_G),timeStep(I_G),tangible_entity(X1_G),timeStep(VAR_1),timeStep(VAR_0).
-dom_confined_to(X0_G,X1_G,VAR_0):--dom_confined_to(X0_G,X1_G,I_G),not  dom_confined_to(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(I_G),tangible_entity(X0_G),timeStep(VAR_1),tangible_entity(X1_G),timeStep(VAR_0).
is_in_front_of(X0_G,X1_G,VAR_0):-is_in_front_of(X0_G,X1_G,I_G),not  -is_in_front_of(X0_G,X1_G,VAR_1),dom_is_in_front_of(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X1_G),timeStep(VAR_1),spatial_entity(X0_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_2).
-is_in_front_of(X0_G,X1_G,VAR_0):--is_in_front_of(X0_G,X1_G,I_G),not  is_in_front_of(X0_G,X1_G,VAR_1),dom_is_in_front_of(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X1_G),timeStep(VAR_0),timeStep(VAR_2),timeStep(I_G),spatial_entity(X0_G),timeStep(VAR_1).
dom_is_in_front_of(X0_G,X1_G,I_G):-is_in_front_of(X0_G,X1_G,I_G),spatial_entity(X0_G),spatial_entity(X1_G),timeStep(I_G).
dom_is_in_front_of(X0_G,X1_G,I_G):--is_in_front_of(X0_G,X1_G,I_G),spatial_entity(X1_G),spatial_entity(X0_G),timeStep(I_G).
dom_is_in_front_of(X0_G,X1_G,VAR_0):-dom_is_in_front_of(X0_G,X1_G,I_G),not  -dom_is_in_front_of(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_0),spatial_entity(X0_G),spatial_entity(X1_G),timeStep(I_G),timeStep(VAR_1).
-dom_is_in_front_of(X0_G,X1_G,VAR_0):--dom_is_in_front_of(X0_G,X1_G,I_G),not  dom_is_in_front_of(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(I_G),spatial_entity(X1_G),spatial_entity(X0_G),timeStep(VAR_1),timeStep(VAR_0).
is_accessible(X0_G,VAR_0):-is_accessible(X0_G,I_G),not  -is_accessible(X0_G,VAR_1),dom_is_accessible(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,entity(X0_G),timeStep(I_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(VAR_2).
-is_accessible(X0_G,VAR_0):--is_accessible(X0_G,I_G),not  is_accessible(X0_G,VAR_1),dom_is_accessible(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_1),timeStep(VAR_2),entity(X0_G),timeStep(VAR_0),timeStep(I_G).
dom_is_accessible(X0_G,I_G):-is_accessible(X0_G,I_G),timeStep(I_G),entity(X0_G).
dom_is_accessible(X0_G,I_G):--is_accessible(X0_G,I_G),entity(X0_G),timeStep(I_G).
dom_is_accessible(X0_G,VAR_0):-dom_is_accessible(X0_G,I_G),not  -dom_is_accessible(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_0),entity(X0_G),timeStep(VAR_1),timeStep(I_G).
-dom_is_accessible(X0_G,VAR_0):--dom_is_accessible(X0_G,I_G),not  dom_is_accessible(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,entity(X0_G),timeStep(VAR_1),timeStep(I_G),timeStep(VAR_0).
is_along(X0_G,X1_G,VAR_0):-is_along(X0_G,X1_G,I_G),not  -is_along(X0_G,X1_G,VAR_1),dom_is_along(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(I_G),spatial_entity(X1_G),timeStep(VAR_2),spatial_entity(X0_G),timeStep(VAR_1),timeStep(VAR_0).
-is_along(X0_G,X1_G,VAR_0):--is_along(X0_G,X1_G,I_G),not  is_along(X0_G,X1_G,VAR_1),dom_is_along(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),timeStep(VAR_0),timeStep(I_G),spatial_entity(X1_G),timeStep(VAR_2),timeStep(VAR_1).
dom_is_along(X0_G,X1_G,I_G):-is_along(X0_G,X1_G,I_G),timeStep(I_G),spatial_entity(X0_G),spatial_entity(X1_G).
dom_is_along(X0_G,X1_G,I_G):--is_along(X0_G,X1_G,I_G),spatial_entity(X0_G),spatial_entity(X1_G),timeStep(I_G).
dom_is_along(X0_G,X1_G,VAR_0):-dom_is_along(X0_G,X1_G,I_G),not  -dom_is_along(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(I_G),spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_1),timeStep(VAR_0).
-dom_is_along(X0_G,X1_G,VAR_0):--dom_is_along(X0_G,X1_G,I_G),not  dom_is_along(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(I_G).
is_below(X0_G,X1_G,VAR_0):-is_below(X0_G,X1_G,I_G),not  -is_below(X0_G,X1_G,VAR_1),dom_is_below(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_0),timeStep(VAR_2),timeStep(VAR_1),timeStep(I_G).
-is_below(X0_G,X1_G,VAR_0):--is_below(X0_G,X1_G,I_G),not  is_below(X0_G,X1_G,VAR_1),dom_is_below(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_0),spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_1),timeStep(VAR_2),timeStep(I_G).
dom_is_below(X0_G,X1_G,I_G):-is_below(X0_G,X1_G,I_G),spatial_entity(X0_G),spatial_entity(X1_G),timeStep(I_G).
dom_is_below(X0_G,X1_G,I_G):--is_below(X0_G,X1_G,I_G),spatial_entity(X0_G),spatial_entity(X1_G),timeStep(I_G).
dom_is_below(X0_G,X1_G,VAR_0):-dom_is_below(X0_G,X1_G,I_G),not  -dom_is_below(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(I_G),spatial_entity(X1_G),timeStep(VAR_0),spatial_entity(X0_G),timeStep(VAR_1).
-dom_is_below(X0_G,X1_G,VAR_0):--dom_is_below(X0_G,X1_G,I_G),not  dom_is_below(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_1),timeStep(VAR_0),timeStep(I_G).
is_near(X0_G,X1_G,VAR_0):-is_near(X0_G,X1_G,I_G),not  -is_near(X0_G,X1_G,VAR_1),dom_is_near(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),timeStep(VAR_0),timeStep(VAR_1),spatial_entity(X1_G),timeStep(I_G),timeStep(VAR_2).
-is_near(X0_G,X1_G,VAR_0):--is_near(X0_G,X1_G,I_G),not  is_near(X0_G,X1_G,VAR_1),dom_is_near(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_2),timeStep(VAR_1).
dom_is_near(X0_G,X1_G,I_G):-is_near(X0_G,X1_G,I_G),spatial_entity(X1_G),timeStep(I_G),spatial_entity(X0_G).
dom_is_near(X0_G,X1_G,I_G):--is_near(X0_G,X1_G,I_G),spatial_entity(X1_G),timeStep(I_G),spatial_entity(X0_G).
dom_is_near(X0_G,X1_G,VAR_0):-dom_is_near(X0_G,X1_G,I_G),not  -dom_is_near(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X0_G),timeStep(I_G),timeStep(VAR_1),timeStep(VAR_0),spatial_entity(X1_G).
-dom_is_near(X0_G,X1_G,VAR_0):--dom_is_near(X0_G,X1_G,I_G),not  dom_is_near(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X0_G),timeStep(VAR_0),timeStep(VAR_1),spatial_entity(X1_G),timeStep(I_G).
is_held(X0_G,VAR_0):-is_held(X0_G,I_G),not  -is_held(X0_G,VAR_1),dom_is_held(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(I_G),tangible_entity(X0_G),timeStep(VAR_1),timeStep(VAR_2),timeStep(VAR_0).
-is_held(X0_G,VAR_0):--is_held(X0_G,I_G),not  is_held(X0_G,VAR_1),dom_is_held(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,tangible_entity(X0_G),timeStep(I_G),timeStep(VAR_0),timeStep(VAR_2),timeStep(VAR_1).
dom_is_held(X0_G,I_G):-is_held(X0_G,I_G),timeStep(I_G),tangible_entity(X0_G).
dom_is_held(X0_G,I_G):--is_held(X0_G,I_G),tangible_entity(X0_G),timeStep(I_G).
dom_is_held(X0_G,VAR_0):-dom_is_held(X0_G,I_G),not  -dom_is_held(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_1),timeStep(I_G),timeStep(VAR_0),tangible_entity(X0_G).
-dom_is_held(X0_G,VAR_0):--dom_is_held(X0_G,I_G),not  dom_is_held(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_1),timeStep(VAR_0),tangible_entity(X0_G),timeStep(I_G).
is_touching(X0_G,X1_G,VAR_0):-is_touching(X0_G,X1_G,I_G),not  -is_touching(X0_G,X1_G,VAR_1),dom_is_touching(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(I_G),timeStep(VAR_2),tangible_entity(X1_G),tangible_entity(X0_G),timeStep(VAR_0),timeStep(VAR_1).
-is_touching(X0_G,X1_G,VAR_0):--is_touching(X0_G,X1_G,I_G),not  is_touching(X0_G,X1_G,VAR_1),dom_is_touching(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,tangible_entity(X1_G),timeStep(VAR_2),timeStep(VAR_0),tangible_entity(X0_G),timeStep(I_G),timeStep(VAR_1).
dom_is_touching(X0_G,X1_G,I_G):-is_touching(X0_G,X1_G,I_G),tangible_entity(X0_G),tangible_entity(X1_G),timeStep(I_G).
dom_is_touching(X0_G,X1_G,I_G):--is_touching(X0_G,X1_G,I_G),tangible_entity(X0_G),timeStep(I_G),tangible_entity(X1_G).
dom_is_touching(X0_G,X1_G,VAR_0):-dom_is_touching(X0_G,X1_G,I_G),not  -dom_is_touching(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_0),tangible_entity(X1_G),timeStep(VAR_1),tangible_entity(X0_G),timeStep(I_G).
-dom_is_touching(X0_G,X1_G,VAR_0):--dom_is_touching(X0_G,X1_G,I_G),not  dom_is_touching(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,tangible_entity(X1_G),tangible_entity(X0_G),timeStep(VAR_1),timeStep(VAR_0),timeStep(I_G).
is_inside(X0_G,X1_G,VAR_0):-is_inside(X0_G,X1_G,I_G),not  -is_inside(X0_G,X1_G,VAR_1),dom_is_inside(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),timeStep(I_G),timeStep(VAR_2),timeStep(VAR_1),spatial_entity(X1_G),timeStep(VAR_0).
-is_inside(X0_G,X1_G,VAR_0):--is_inside(X0_G,X1_G,I_G),not  is_inside(X0_G,X1_G,VAR_1),dom_is_inside(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(I_G),spatial_entity(X1_G),timeStep(VAR_1),spatial_entity(X0_G),timeStep(VAR_2),timeStep(VAR_0).
dom_is_inside(X0_G,X1_G,I_G):-is_inside(X0_G,X1_G,I_G),spatial_entity(X1_G),spatial_entity(X0_G),timeStep(I_G).
dom_is_inside(X0_G,X1_G,I_G):--is_inside(X0_G,X1_G,I_G),spatial_entity(X0_G),timeStep(I_G),spatial_entity(X1_G).
dom_is_inside(X0_G,X1_G,VAR_0):-dom_is_inside(X0_G,X1_G,I_G),not  -dom_is_inside(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X1_G),timeStep(VAR_1),spatial_entity(X0_G),timeStep(I_G),timeStep(VAR_0).
-dom_is_inside(X0_G,X1_G,VAR_0):--dom_is_inside(X0_G,X1_G,I_G),not  dom_is_inside(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_1).
abuts(X0_G,X1_G,VAR_0):-abuts(X0_G,X1_G,I_G),not  -abuts(X0_G,X1_G,VAR_1),dom_abuts(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),timeStep(VAR_0),timeStep(VAR_2),timeStep(I_G),spatial_entity(X1_G),timeStep(VAR_1).
-abuts(X0_G,X1_G,VAR_0):--abuts(X0_G,X1_G,I_G),not  abuts(X0_G,X1_G,VAR_1),dom_abuts(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_2),spatial_entity(X1_G),spatial_entity(X0_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_1).
dom_abuts(X0_G,X1_G,I_G):-abuts(X0_G,X1_G,I_G),spatial_entity(X0_G),spatial_entity(X1_G),timeStep(I_G).
dom_abuts(X0_G,X1_G,I_G):--abuts(X0_G,X1_G,I_G),spatial_entity(X1_G),timeStep(I_G),spatial_entity(X0_G).
dom_abuts(X0_G,X1_G,VAR_0):-dom_abuts(X0_G,X1_G,I_G),not  -dom_abuts(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_0),spatial_entity(X1_G),spatial_entity(X0_G),timeStep(VAR_1),timeStep(I_G).
-dom_abuts(X0_G,X1_G,VAR_0):--dom_abuts(X0_G,X1_G,I_G),not  dom_abuts(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X0_G),timeStep(VAR_0),spatial_entity(X1_G),timeStep(I_G),timeStep(VAR_1).
is_restrained(X0_G,VAR_0):-is_restrained(X0_G,I_G),not  -is_restrained(X0_G,VAR_1),dom_is_restrained(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_0),tangible_entity(X0_G),timeStep(I_G),timeStep(VAR_1),timeStep(VAR_2).
-is_restrained(X0_G,VAR_0):--is_restrained(X0_G,I_G),not  is_restrained(X0_G,VAR_1),dom_is_restrained(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,tangible_entity(X0_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(I_G),timeStep(VAR_2).
dom_is_restrained(X0_G,I_G):-is_restrained(X0_G,I_G),tangible_entity(X0_G),timeStep(I_G).
dom_is_restrained(X0_G,I_G):--is_restrained(X0_G,I_G),timeStep(I_G),tangible_entity(X0_G).
dom_is_restrained(X0_G,VAR_0):-dom_is_restrained(X0_G,I_G),not  -dom_is_restrained(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,tangible_entity(X0_G),timeStep(I_G),timeStep(VAR_1),timeStep(VAR_0).
-dom_is_restrained(X0_G,VAR_0):--dom_is_restrained(X0_G,I_G),not  dom_is_restrained(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_1),tangible_entity(X0_G),timeStep(I_G),timeStep(VAR_0).
is_closed(X0_G,VAR_0):-is_closed(X0_G,I_G),not  -is_closed(X0_G,VAR_1),dom_is_closed(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_0),timeStep(VAR_2),spatial_entity(X0_G),timeStep(VAR_1),timeStep(I_G).
-is_closed(X0_G,VAR_0):--is_closed(X0_G,I_G),not  is_closed(X0_G,VAR_1),dom_is_closed(X0_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),timeStep(VAR_2),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_1).
dom_is_closed(X0_G,I_G):-is_closed(X0_G,I_G),spatial_entity(X0_G),timeStep(I_G).
dom_is_closed(X0_G,I_G):--is_closed(X0_G,I_G),timeStep(I_G),spatial_entity(X0_G).
dom_is_closed(X0_G,VAR_0):-dom_is_closed(X0_G,I_G),not  -dom_is_closed(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(I_G),spatial_entity(X0_G),timeStep(VAR_1),timeStep(VAR_0).
-dom_is_closed(X0_G,VAR_0):--dom_is_closed(X0_G,I_G),not  dom_is_closed(X0_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_0),timeStep(VAR_1),timeStep(I_G),spatial_entity(X0_G).
known_to(X0_G,X1_G,VAR_0):-known_to(X0_G,X1_G,I_G),not  -known_to(X0_G,X1_G,VAR_1),dom_known_to(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,entity(X0_G),timeStep(VAR_0),timeStep(VAR_2),tangible_entity(X1_G),timeStep(VAR_1),timeStep(I_G).
-known_to(X0_G,X1_G,VAR_0):--known_to(X0_G,X1_G,I_G),not  known_to(X0_G,X1_G,VAR_1),dom_known_to(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_1),entity(X0_G),timeStep(VAR_0),tangible_entity(X1_G),timeStep(VAR_2),timeStep(I_G).
dom_known_to(X0_G,X1_G,I_G):-known_to(X0_G,X1_G,I_G),timeStep(I_G),entity(X0_G),tangible_entity(X1_G).
dom_known_to(X0_G,X1_G,I_G):--known_to(X0_G,X1_G,I_G),timeStep(I_G),tangible_entity(X1_G),entity(X0_G).
dom_known_to(X0_G,X1_G,VAR_0):-dom_known_to(X0_G,X1_G,I_G),not  -dom_known_to(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(I_G),tangible_entity(X1_G),timeStep(VAR_1),entity(X0_G),timeStep(VAR_0).
-dom_known_to(X0_G,X1_G,VAR_0):--dom_known_to(X0_G,X1_G,I_G),not  dom_known_to(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,entity(X0_G),tangible_entity(X1_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_1).
is_on(X0_G,X1_G,VAR_0):-is_on(X0_G,X1_G,I_G),not  -is_on(X0_G,X1_G,VAR_1),dom_is_on(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_2),timeStep(VAR_1).
-is_on(X0_G,X1_G,VAR_0):--is_on(X0_G,X1_G,I_G),not  is_on(X0_G,X1_G,VAR_1),dom_is_on(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_0),spatial_entity(X0_G),timeStep(VAR_1),spatial_entity(X1_G),timeStep(VAR_2),timeStep(I_G).
dom_is_on(X0_G,X1_G,I_G):-is_on(X0_G,X1_G,I_G),spatial_entity(X1_G),timeStep(I_G),spatial_entity(X0_G).
dom_is_on(X0_G,X1_G,I_G):--is_on(X0_G,X1_G,I_G),spatial_entity(X1_G),timeStep(I_G),spatial_entity(X0_G).
dom_is_on(X0_G,X1_G,VAR_0):-dom_is_on(X0_G,X1_G,I_G),not  -dom_is_on(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_1),timeStep(VAR_0),spatial_entity(X1_G),spatial_entity(X0_G),timeStep(I_G).
-dom_is_on(X0_G,X1_G,VAR_0):--dom_is_on(X0_G,X1_G,I_G),not  dom_is_on(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X1_G),timeStep(I_G),spatial_entity(X0_G),timeStep(VAR_0),timeStep(VAR_1).
is_at(X0_G,X1_G,VAR_0):-is_at(X0_G,X1_G,I_G),not  -is_at(X0_G,X1_G,VAR_1),dom_is_at(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_2),spatial_entity(X1_G),entity(X0_G),timeStep(I_G),timeStep(VAR_1),timeStep(VAR_0).
-is_at(X0_G,X1_G,VAR_0):--is_at(X0_G,X1_G,I_G),not  is_at(X0_G,X1_G,VAR_1),dom_is_at(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,entity(X0_G),spatial_entity(X1_G),timeStep(VAR_1),timeStep(VAR_2),timeStep(I_G),timeStep(VAR_0).
dom_is_at(X0_G,X1_G,I_G):-is_at(X0_G,X1_G,I_G),spatial_entity(X1_G),timeStep(I_G),entity(X0_G).
dom_is_at(X0_G,X1_G,I_G):--is_at(X0_G,X1_G,I_G),timeStep(I_G),spatial_entity(X1_G),entity(X0_G).
dom_is_at(X0_G,X1_G,VAR_0):-dom_is_at(X0_G,X1_G,I_G),not  -dom_is_at(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_1),timeStep(I_G),spatial_entity(X1_G),entity(X0_G),timeStep(VAR_0).
-dom_is_at(X0_G,X1_G,VAR_0):--dom_is_at(X0_G,X1_G,I_G),not  dom_is_at(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,entity(X0_G),spatial_entity(X1_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(I_G).
is_behind(X0_G,X1_G,VAR_0):-is_behind(X0_G,X1_G,I_G),not  -is_behind(X0_G,X1_G,VAR_1),dom_is_behind(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_1),spatial_entity(X1_G),timeStep(VAR_0),spatial_entity(X0_G),timeStep(VAR_2),timeStep(I_G).
-is_behind(X0_G,X1_G,VAR_0):--is_behind(X0_G,X1_G,I_G),not  is_behind(X0_G,X1_G,VAR_1),dom_is_behind(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X1_G),timeStep(VAR_1),timeStep(I_G),timeStep(VAR_2),timeStep(VAR_0),spatial_entity(X0_G).
dom_is_behind(X0_G,X1_G,I_G):-is_behind(X0_G,X1_G,I_G),timeStep(I_G),spatial_entity(X1_G),spatial_entity(X0_G).
dom_is_behind(X0_G,X1_G,I_G):--is_behind(X0_G,X1_G,I_G),spatial_entity(X1_G),timeStep(I_G),spatial_entity(X0_G).
dom_is_behind(X0_G,X1_G,VAR_0):-dom_is_behind(X0_G,X1_G,I_G),not  -dom_is_behind(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X1_G),timeStep(I_G),timeStep(VAR_1),timeStep(VAR_0),spatial_entity(X0_G).
-dom_is_behind(X0_G,X1_G,VAR_0):--dom_is_behind(X0_G,X1_G,I_G),not  dom_is_behind(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X1_G),timeStep(VAR_1),spatial_entity(X0_G),timeStep(I_G),timeStep(VAR_0).
has_part(X0_G,X1_G,VAR_0):-has_part(X0_G,X1_G,I_G),not  -has_part(X0_G,X1_G,VAR_1),dom_has_part(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,entity(X0_G),entity(X1_G),timeStep(VAR_0),timeStep(VAR_2),timeStep(I_G),timeStep(VAR_1).
-has_part(X0_G,X1_G,VAR_0):--has_part(X0_G,X1_G,I_G),not  has_part(X0_G,X1_G,VAR_1),dom_has_part(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_0),entity(X1_G),entity(X0_G),timeStep(VAR_1),timeStep(I_G),timeStep(VAR_2).
dom_has_part(X0_G,X1_G,I_G):-has_part(X0_G,X1_G,I_G),entity(X1_G),entity(X0_G),timeStep(I_G).
dom_has_part(X0_G,X1_G,I_G):--has_part(X0_G,X1_G,I_G),timeStep(I_G),entity(X0_G),entity(X1_G).
dom_has_part(X0_G,X1_G,VAR_0):-dom_has_part(X0_G,X1_G,I_G),not  -dom_has_part(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,entity(X0_G),timeStep(VAR_1),timeStep(VAR_0),entity(X1_G),timeStep(I_G).
-dom_has_part(X0_G,X1_G,VAR_0):--dom_has_part(X0_G,X1_G,I_G),not  dom_has_part(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,entity(X1_G),entity(X0_G),timeStep(I_G),timeStep(VAR_0),timeStep(VAR_1).
contained_in(X0_G,X1_G,VAR_0):-contained_in(X0_G,X1_G,I_G),not  -contained_in(X0_G,X1_G,VAR_1),dom_contained_in(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,tangible_entity(X1_G),timeStep(VAR_0),timeStep(VAR_1),tangible_entity(X0_G),timeStep(VAR_2),timeStep(I_G).
-contained_in(X0_G,X1_G,VAR_0):--contained_in(X0_G,X1_G,I_G),not  contained_in(X0_G,X1_G,VAR_1),dom_contained_in(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,tangible_entity(X1_G),timeStep(VAR_2),tangible_entity(X0_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_1).
dom_contained_in(X0_G,X1_G,I_G):-contained_in(X0_G,X1_G,I_G),tangible_entity(X0_G),timeStep(I_G),tangible_entity(X1_G).
dom_contained_in(X0_G,X1_G,I_G):--contained_in(X0_G,X1_G,I_G),tangible_entity(X0_G),tangible_entity(X1_G),timeStep(I_G).
dom_contained_in(X0_G,X1_G,VAR_0):-dom_contained_in(X0_G,X1_G,I_G),not  -dom_contained_in(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_1),tangible_entity(X1_G),tangible_entity(X0_G),timeStep(I_G),timeStep(VAR_0).
-dom_contained_in(X0_G,X1_G,VAR_0):--dom_contained_in(X0_G,X1_G,I_G),not  dom_contained_in(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,tangible_entity(X0_G),timeStep(VAR_0),tangible_entity(X1_G),timeStep(I_G),timeStep(VAR_1).
is_between(X0_G,X1_G,VAR_0):-is_between(X0_G,X1_G,I_G),not  -is_between(X0_G,X1_G,VAR_1),dom_is_between(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,timeStep(VAR_1),spatial_entity(X0_G),timeStep(VAR_2),timeStep(I_G),spatial_entity(X1_G),timeStep(VAR_0).
-is_between(X0_G,X1_G,VAR_0):--is_between(X0_G,X1_G,I_G),not  is_between(X0_G,X1_G,VAR_1),dom_is_between(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_0),timeStep(I_G),timeStep(VAR_1),timeStep(VAR_2).
dom_is_between(X0_G,X1_G,I_G):-is_between(X0_G,X1_G,I_G),timeStep(I_G),spatial_entity(X1_G),spatial_entity(X0_G).
dom_is_between(X0_G,X1_G,I_G):--is_between(X0_G,X1_G,I_G),spatial_entity(X1_G),spatial_entity(X0_G),timeStep(I_G).
dom_is_between(X0_G,X1_G,VAR_0):-dom_is_between(X0_G,X1_G,I_G),not  -dom_is_between(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_0),spatial_entity(X0_G),timeStep(I_G),timeStep(VAR_1),spatial_entity(X1_G).
-dom_is_between(X0_G,X1_G,VAR_0):--dom_is_between(X0_G,X1_G,I_G),not  dom_is_between(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_1),spatial_entity(X0_G),spatial_entity(X1_G),timeStep(I_G),timeStep(VAR_0).
is_over(X0_G,X1_G,VAR_0):-is_over(X0_G,X1_G,I_G),not  -is_over(X0_G,X1_G,VAR_1),dom_is_over(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X1_G),spatial_entity(X0_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(VAR_2),timeStep(I_G).
-is_over(X0_G,X1_G,VAR_0):--is_over(X0_G,X1_G,I_G),not  is_over(X0_G,X1_G,VAR_1),dom_is_over(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X1_G),spatial_entity(X0_G),timeStep(VAR_0),timeStep(VAR_1),timeStep(I_G),timeStep(VAR_2).
dom_is_over(X0_G,X1_G,I_G):-is_over(X0_G,X1_G,I_G),timeStep(I_G),spatial_entity(X1_G),spatial_entity(X0_G).
dom_is_over(X0_G,X1_G,I_G):--is_over(X0_G,X1_G,I_G),spatial_entity(X0_G),spatial_entity(X1_G),timeStep(I_G).
dom_is_over(X0_G,X1_G,VAR_0):-dom_is_over(X0_G,X1_G,I_G),not  -dom_is_over(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(VAR_1),spatial_entity(X0_G),timeStep(VAR_0),spatial_entity(X1_G),timeStep(I_G).
-dom_is_over(X0_G,X1_G,VAR_0):--dom_is_over(X0_G,X1_G,I_G),not  dom_is_over(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(I_G),spatial_entity(X1_G),timeStep(VAR_0),timeStep(VAR_1),spatial_entity(X0_G).
is_beside(X0_G,X1_G,VAR_0):-is_beside(X0_G,X1_G,I_G),not  -is_beside(X0_G,X1_G,VAR_1),dom_is_beside(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_1),timeStep(I_G),timeStep(VAR_2),timeStep(VAR_0).
-is_beside(X0_G,X1_G,VAR_0):--is_beside(X0_G,X1_G,I_G),not  is_beside(X0_G,X1_G,VAR_1),dom_is_beside(X0_G,X1_G,VAR_2),VAR_0=I_G+1,VAR_1=I_G+1,VAR_2=I_G+1,spatial_entity(X0_G),spatial_entity(X1_G),timeStep(I_G),timeStep(VAR_1),timeStep(VAR_0),timeStep(VAR_2).
dom_is_beside(X0_G,X1_G,I_G):-is_beside(X0_G,X1_G,I_G),spatial_entity(X0_G),timeStep(I_G),spatial_entity(X1_G).
dom_is_beside(X0_G,X1_G,I_G):--is_beside(X0_G,X1_G,I_G),timeStep(I_G),spatial_entity(X0_G),spatial_entity(X1_G).
dom_is_beside(X0_G,X1_G,VAR_0):-dom_is_beside(X0_G,X1_G,I_G),not  -dom_is_beside(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,spatial_entity(X1_G),timeStep(VAR_0),spatial_entity(X0_G),timeStep(I_G),timeStep(VAR_1).
-dom_is_beside(X0_G,X1_G,VAR_0):--dom_is_beside(X0_G,X1_G,I_G),not  dom_is_beside(X0_G,X1_G,VAR_1),VAR_0=I_G+1,VAR_1=I_G+1,timeStep(I_G),spatial_entity(X0_G),spatial_entity(X1_G),timeStep(VAR_1),timeStep(VAR_0).
-possesses(D_G,O_G,VAR_0):-event_donor(X_G,D_G),event_object(X_G,O_G),occurs(X_G,TS_G),instance(X_G,transfer),VAR_0=TS_G+1,entity(D_G),timeStep(VAR_0),event(X_G),timeStep(TS_G),entity(O_G),actions(X_G),universe(X_G).
possesses(R_G,O_G,VAR_0):-event_recipient(X_G,R_G),event_object(X_G,O_G),occurs(X_G,TS_G),instance(X_G,transfer),VAR_0=TS_G+1,timeStep(TS_G),entity(R_G),event(X_G),actions(X_G),universe(X_G),entity(O_G),timeStep(VAR_0).
location(O_G,D_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(D_G),entity(O_G),tangible_entity(O_G),event(X_G),universe(X_G),timeStep(TS_G),universe(D_G),timeStep(VAR_0),actions(X_G).
location(O_G,P_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),-instance(D_G,tangible_entity),location(D_G,P_G,TS_G),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(P_G),timeStep(TS_G),actions(X_G),entity(O_G),tangible_entity(D_G),tangible_entity(O_G),spatial_entity(D_G),event(X_G),timeStep(VAR_0),universe(D_G),universe(X_G).
is_near(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_near(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,timeStep(TS_G),universe(D_G),spatial_entity(D_G),spatial_entity(Y_G),universe(X_G),event(X_G),entity(O_G),timeStep(VAR_0),actions(X_G),spatial_entity(O_G).
is_above(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_above(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(D_G),event(X_G),timeStep(TS_G),entity(O_G),spatial_entity(Y_G),actions(X_G),timeStep(VAR_0),universe(X_G),universe(D_G),spatial_entity(O_G).
is_below(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_below(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(Y_G),timeStep(TS_G),actions(X_G),universe(X_G),universe(D_G),event(X_G),spatial_entity(O_G),entity(O_G),spatial_entity(D_G),timeStep(VAR_0).
is_along(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_along(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(D_G),universe(X_G),event(X_G),spatial_entity(O_G),actions(X_G),entity(O_G),timeStep(VAR_0),timeStep(TS_G),spatial_entity(Y_G),universe(D_G).
is_at(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_at(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(Y_G),entity(O_G),timeStep(VAR_0),actions(X_G),universe(D_G),timeStep(TS_G),event(X_G),universe(X_G),spatial_entity(D_G),entity(D_G).
is_beside(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_beside(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(Y_G),timeStep(TS_G),event(X_G),spatial_entity(O_G),entity(O_G),actions(X_G),spatial_entity(D_G),universe(X_G),timeStep(VAR_0),universe(D_G).
is_along(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_along(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(D_G),timeStep(TS_G),entity(O_G),universe(X_G),event(X_G),actions(X_G),universe(D_G),timeStep(VAR_0),spatial_entity(Y_G),spatial_entity(O_G).
is_between(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_between(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(Y_G),event(X_G),timeStep(VAR_0),timeStep(TS_G),spatial_entity(O_G),entity(O_G),universe(D_G),spatial_entity(D_G),universe(X_G),actions(X_G).
is_behind(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_behind(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,entity(O_G),event(X_G),timeStep(TS_G),spatial_entity(Y_G),timeStep(VAR_0),universe(D_G),actions(X_G),spatial_entity(O_G),universe(X_G),spatial_entity(D_G).
is_in_front_of(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_in_front_of(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,timeStep(TS_G),event(X_G),actions(X_G),entity(O_G),spatial_entity(Y_G),universe(D_G),spatial_entity(O_G),spatial_entity(D_G),universe(X_G),timeStep(VAR_0).
is_inside(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_inside(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,timeStep(VAR_0),spatial_entity(Y_G),universe(X_G),actions(X_G),universe(D_G),event(X_G),timeStep(TS_G),spatial_entity(D_G),spatial_entity(O_G),entity(O_G).
is_on(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_on(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,entity(O_G),spatial_entity(D_G),universe(D_G),actions(X_G),timeStep(TS_G),timeStep(VAR_0),event(X_G),spatial_entity(Y_G),universe(X_G),spatial_entity(O_G).
is_opposite(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_opposite(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(D_G),spatial_entity(Y_G),universe(X_G),event(X_G),timeStep(VAR_0),timeStep(TS_G),entity(O_G),universe(D_G),actions(X_G),spatial_entity(O_G).
is_outside(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_outside(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,timeStep(TS_G),universe(X_G),entity(O_G),event(X_G),spatial_entity(Y_G),spatial_entity(D_G),spatial_entity(O_G),timeStep(VAR_0),universe(D_G),actions(X_G).
-encloses(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),-encloses(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(O_G),event(X_G),universe(X_G),spatial_entity(D_G),universe(D_G),spatial_entity(Y_G),entity(O_G),timeStep(TS_G),timeStep(VAR_0),actions(X_G).
is_over(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_over(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,event(X_G),spatial_entity(O_G),spatial_entity(D_G),timeStep(VAR_0),actions(X_G),entity(O_G),universe(X_G),spatial_entity(Y_G),timeStep(TS_G),universe(D_G).
is_under(O_G,Y_G,VAR_0):-event_object(X_G,O_G),event_destination(X_G,D_G),is_under(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(Y_G),actions(X_G),event(X_G),spatial_entity(D_G),entity(O_G),universe(D_G),spatial_entity(O_G),timeStep(TS_G),universe(X_G),timeStep(VAR_0).
-location(O_G,L_G,VAR_0):-event_object(X_G,O_G),location(O_G,L_G,TS_G),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,event(X_G),spatial_entity(L_G),tangible_entity(O_G),universe(X_G),timeStep(VAR_0),entity(O_G),timeStep(TS_G),actions(X_G).
-is_near(O_G,Y_G,VAR_0):-event_object(X_G,O_G),is_near(O_G,Y_G,TS_G),event_destination(X_G,D_G),-is_near(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,timeStep(TS_G),timeStep(VAR_0),spatial_entity(Y_G),universe(X_G),entity(O_G),spatial_entity(D_G),event(X_G),spatial_entity(O_G),actions(X_G),universe(D_G).
-abuts(O_G,Y_G,VAR_0):-event_object(X_G,O_G),abuts(O_G,Y_G,TS_G),event_destination(X_G,D_G),-abuts(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,timeStep(VAR_0),spatial_entity(D_G),entity(O_G),spatial_entity(O_G),actions(X_G),spatial_entity(Y_G),universe(X_G),event(X_G),universe(D_G),timeStep(TS_G).
-is_above(O_G,Y_G,VAR_0):-event_object(X_G,O_G),is_above(O_G,Y_G,TS_G),event_destination(X_G,D_G),-is_above(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(O_G),entity(O_G),spatial_entity(Y_G),timeStep(TS_G),universe(D_G),event(X_G),spatial_entity(D_G),actions(X_G),timeStep(VAR_0),universe(X_G).
-is_below(O_G,Y_G,VAR_0):-event_object(X_G,O_G),is_below(O_G,Y_G,TS_G),event_destination(X_G,D_G),-is_below(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,timeStep(VAR_0),spatial_entity(D_G),timeStep(TS_G),spatial_entity(O_G),spatial_entity(Y_G),universe(D_G),event(X_G),universe(X_G),entity(O_G),actions(X_G).
-is_along(O_G,Y_G,VAR_0):-event_object(X_G,O_G),is_along(O_G,Y_G,TS_G),event_destination(X_G,D_G),-is_along(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,entity(O_G),universe(D_G),universe(X_G),spatial_entity(Y_G),spatial_entity(D_G),timeStep(TS_G),event(X_G),timeStep(VAR_0),spatial_entity(O_G),actions(X_G).
-is_at(O_G,Y_G,VAR_0):-event_object(X_G,O_G),is_at(O_G,Y_G,TS_G),event_destination(X_G,D_G),-is_at(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,entity(O_G),event(X_G),timeStep(TS_G),spatial_entity(Y_G),actions(X_G),spatial_entity(D_G),entity(D_G),universe(D_G),universe(X_G),timeStep(VAR_0).
-is_between(O_G,Y_G,VAR_0):-event_object(X_G,O_G),is_between(O_G,Y_G,TS_G),event_destination(X_G,D_G),-is_between(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,timeStep(VAR_0),spatial_entity(D_G),spatial_entity(Y_G),spatial_entity(O_G),timeStep(TS_G),event(X_G),entity(O_G),actions(X_G),universe(D_G),universe(X_G).
-is_behind(O_G,Y_G,VAR_0):-event_object(X_G,O_G),is_behind(O_G,Y_G,TS_G),event_destination(X_G,D_G),-is_behind(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,universe(D_G),spatial_entity(O_G),timeStep(VAR_0),event(X_G),spatial_entity(Y_G),timeStep(TS_G),universe(X_G),spatial_entity(D_G),entity(O_G),actions(X_G).
-is_in_front_of(O_G,Y_G,VAR_0):-event_object(X_G,O_G),is_in_front_of(O_G,Y_G,TS_G),event_destination(X_G,D_G),-is_in_front_of(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(Y_G),spatial_entity(O_G),timeStep(TS_G),entity(O_G),spatial_entity(D_G),timeStep(VAR_0),event(X_G),universe(X_G),universe(D_G),actions(X_G).
-is_inside(O_G,Y_G,VAR_0):-event_object(X_G,O_G),is_inside(O_G,Y_G,TS_G),event_destination(X_G,D_G),-is_inside(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(O_G),timeStep(TS_G),universe(D_G),event(X_G),timeStep(VAR_0),actions(X_G),spatial_entity(Y_G),entity(O_G),universe(X_G),spatial_entity(D_G).
-encloses(O_G,Y_G,VAR_0):-event_object(X_G,O_G),encloses(O_G,Y_G,TS_G),event_destination(X_G,D_G),-encloses(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,timeStep(TS_G),entity(O_G),spatial_entity(O_G),universe(X_G),timeStep(VAR_0),universe(D_G),spatial_entity(Y_G),spatial_entity(D_G),event(X_G),actions(X_G).
-is_on(O_G,Y_G,VAR_0):-event_object(X_G,O_G),is_on(O_G,Y_G,TS_G),event_destination(X_G,D_G),-is_on(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(Y_G),timeStep(TS_G),universe(X_G),universe(D_G),timeStep(VAR_0),spatial_entity(D_G),actions(X_G),spatial_entity(O_G),event(X_G),entity(O_G).
-encloses(O_G,Y_G,VAR_0):-event_object(X_G,O_G),encloses(O_G,Y_G,TS_G),event_destination(X_G,D_G),-encloses(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(Y_G),universe(D_G),spatial_entity(D_G),actions(X_G),event(X_G),timeStep(VAR_0),spatial_entity(O_G),timeStep(TS_G),universe(X_G),entity(O_G).
-is_opposite(O_G,Y_G,VAR_0):-event_object(X_G,O_G),is_opposite(O_G,Y_G,TS_G),event_destination(X_G,D_G),-is_opposite(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,timeStep(TS_G),timeStep(VAR_0),event(X_G),universe(D_G),spatial_entity(Y_G),spatial_entity(O_G),actions(X_G),spatial_entity(D_G),universe(X_G),entity(O_G).
-is_outside(O_G,Y_G,VAR_0):-event_object(X_G,O_G),is_outside(O_G,Y_G,TS_G),event_destination(X_G,D_G),-is_outside(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,spatial_entity(Y_G),universe(X_G),event(X_G),spatial_entity(D_G),timeStep(TS_G),timeStep(VAR_0),spatial_entity(O_G),universe(D_G),entity(O_G),actions(X_G).
-is_over(O_G,Y_G,VAR_0):-event_object(X_G,O_G),is_over(O_G,Y_G,TS_G),event_destination(X_G,D_G),-is_over(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,timeStep(TS_G),spatial_entity(D_G),universe(D_G),entity(O_G),spatial_entity(O_G),event(X_G),universe(X_G),spatial_entity(Y_G),actions(X_G),timeStep(VAR_0).
-is_under(O_G,Y_G,VAR_0):-event_object(X_G,O_G),is_under(O_G,Y_G,TS_G),event_destination(X_G,D_G),-is_under(D_G,Y_G,TS_G),instance(D_G,spatial_entity),occurs(X_G,TS_G),instance(X_G,move),VAR_0=TS_G+1,universe(D_G),event(X_G),timeStep(VAR_0),timeStep(TS_G),actions(X_G),spatial_entity(O_G),spatial_entity(Y_G),spatial_entity(D_G),universe(X_G),entity(O_G).
:-occurs(X_G,TS_G),instance(X_G,transfer),event_donor(X_G,D_G),event_object(X_G,O_G),-possesses(D_G,O_G,TS_G),timeStep(TS_G),universe(X_G),event(X_G),actions(X_G),entity(O_G),entity(D_G).
:-occurs(X_G,TS_G),instance(X_G,transfer),event_object(X_G,O_G),event_recipient(X_G,R_G),location(R_G,A_G,TS_G),location(O_G,B_G,TS_G),spatial_entity(A_G),spatial_entity(B_G),A_G!=B_G,event(X_G),timeStep(TS_G),tangible_entity(R_G),universe(X_G),tangible_entity(O_G),entity(O_G),entity(R_G),actions(X_G).
:-occurs(X_G,TS_G),instance(X_G,move),event_object(X_G,O_G),event_origin(X_G,Or_G),instance(Or_G,spatial_entity),-location(O_G,Or_G,TS_G),entity(O_G),spatial_entity(Or_G),tangible_entity(O_G),universe(X_G),event(X_G),timeStep(TS_G),universe(Or_G),actions(X_G).
:-occurs(X_G,TS_G),instance(X_G,move),event_object(X_G,O_G),event_origin(X_G,Or_G),instance(Or_G,tangible_entity),location(Or_G,P_G,TS_G),-location(O_G,P_G,TS_G),spatial_entity(Or_G),tangible_entity(O_G),event(X_G),spatial_entity(P_G),timeStep(TS_G),actions(X_G),universe(Or_G),tangible_entity(Or_G),universe(X_G),entity(O_G).
:-occurs(X_G,TS_G),instance(X_G,move),event_object(X_G,O_G),is_held(O_G,TS_G),-defined_agent(X_G),timeStep(TS_G),event(X_G),entity(O_G),tangible_entity(O_G),actions(X_G),universe(X_G).
:-occurs(X_G,TS_G),instance(X_G,move),event_object(X_G,O_G),is_held(O_G,TS_G),event_agent(X_G,A_G),-held_by(O_G,A_G,TS_G),timeStep(TS_G),entity(O_G),universe(X_G),actions(X_G),tangible_entity(O_G),event(X_G),entity(A_G),tangible_entity(A_G).
:-occurs(X_G,TS_G),instance(X_G,move),event_object(X_G,O_G),is_restrained(O_G,TS_G),universe(X_G),entity(O_G),timeStep(TS_G),tangible_entity(O_G),actions(X_G),event(X_G).
:-occurs(X_G,TS_G),instance(X_G,move),event_path(X_G,P_G),is_blocked(P_G,TS_G),timeStep(TS_G),actions(X_G),spatial_entity(P_G),universe(X_G),event(X_G).
:-occurs(X_G,TS_G),instance(X_G,carry),event_object(X_G,O_G),event_agent(X_G,A_G),-held_by(O_G,A_G,TS_G),universe(X_G),entity(A_G),timeStep(TS_G),tangible_entity(A_G),tangible_entity(O_G),event(X_G),entity(O_G),actions(X_G).
-location(X_G,Y_G,TS_G):-location(X_G,Z_G,TS_G),spatial_entity(Y_G),spatial_entity(Z_G),Y_G!=Z_G,timeStep(TS_G),tangible_entity(X_G).
possesses(B_G,A_G,TS_G):-held_by(A_G,B_G,TS_G),timeStep(TS_G),entity(A_G),tangible_entity(B_G),entity(B_G),tangible_entity(A_G).
-possesses(B_G,A_G,TS_G):--held_by(A_G,B_G,TS_G),entity(A_G),tangible_entity(A_G),timeStep(TS_G),tangible_entity(B_G),entity(B_G).
held_by(B_G,A_G,TS_G):-instance(B_G,tangible_entity),possesses(A_G,B_G,TS_G),timeStep(TS_G),universe(B_G),tangible_entity(B_G),tangible_entity(A_G),entity(B_G),entity(A_G).
-held_by(B_G,A_G,TS_G):-instance(B_G,tangible_entity),-possesses(A_G,B_G,TS_G),tangible_entity(A_G),universe(B_G),timeStep(TS_G),entity(B_G),tangible_entity(B_G),entity(A_G).
location(A_G,P_G,TS_G):-held_by(A_G,B_G,TS_G),location(B_G,P_G,TS_G),instance(A_G,tangible_entity),timeStep(TS_G),tangible_entity(A_G),tangible_entity(B_G),universe(A_G),spatial_entity(P_G).
-location(A_G,P_G,TS_G):-held_by(A_G,B_G,TS_G),-location(B_G,P_G,TS_G),instance(A_G,tangible_entity),tangible_entity(A_G),tangible_entity(B_G),universe(A_G),spatial_entity(P_G),timeStep(TS_G).
is_near(X_G,Y_G,TS_G):-is_near(Y_G,X_G,TS_G),timeStep(TS_G),spatial_entity(X_G),spatial_entity(Y_G).
-is_near(X_G,Y_G,TS_G):--is_near(Y_G,X_G,TS_G),spatial_entity(X_G),timeStep(TS_G),spatial_entity(Y_G).
abuts(X_G,Y_G,TS_G):-abuts(Y_G,X_G,TS_G),spatial_entity(X_G),spatial_entity(Y_G),timeStep(TS_G).
-abuts(X_G,Y_G,TS_G):--abuts(Y_G,X_G,TS_G),spatial_entity(X_G),spatial_entity(Y_G),timeStep(TS_G).
is_beside(X_G,Y_G,TS_G):-is_beside(Y_G,X_G,TS_G),spatial_entity(X_G),timeStep(TS_G),spatial_entity(Y_G).
-is_beside(X_G,Y_G,TS_G):--is_beside(Y_G,X_G,TS_G),spatial_entity(X_G),spatial_entity(Y_G),timeStep(TS_G).
is_opposite(X_G,Y_G,TS_G):-is_opposite(Y_G,X_G,TS_G),spatial_entity(Y_G),spatial_entity(X_G),timeStep(TS_G).
-is_opposite(X_G,Y_G,TS_G):--is_opposite(Y_G,X_G,TS_G),spatial_entity(X_G),spatial_entity(Y_G),timeStep(TS_G).
-is_above(Y_G,X_G,TS_G):-is_above(X_G,Y_G,TS_G),spatial_entity(X_G),spatial_entity(Y_G),X_G!=Y_G,timeStep(TS_G).
-is_below(Y_G,X_G,TS_G):-is_below(X_G,Y_G,TS_G),spatial_entity(X_G),spatial_entity(Y_G),X_G!=Y_G,timeStep(TS_G).
-is_behind(Y_G,X_G,TS_G):-is_behind(X_G,Y_G,TS_G),spatial_entity(X_G),spatial_entity(Y_G),X_G!=Y_G,timeStep(TS_G).
-is_in_front_of(Y_G,X_G,TS_G):-is_in_front_of(X_G,Y_G,TS_G),spatial_entity(X_G),spatial_entity(Y_G),X_G!=Y_G,timeStep(TS_G).
-is_inside(Y_G,X_G,TS_G):-is_inside(X_G,Y_G,TS_G),spatial_entity(X_G),spatial_entity(Y_G),X_G!=Y_G,timeStep(TS_G).
-is_over(Y_G,X_G,TS_G):-is_over(X_G,Y_G,TS_G),spatial_entity(X_G),spatial_entity(Y_G),X_G!=Y_G,timeStep(TS_G).
-is_under(Y_G,X_G,TS_G):-is_under(X_G,Y_G,TS_G),spatial_entity(X_G),spatial_entity(Y_G),X_G!=Y_G,timeStep(TS_G).
-is_on(Y_G,X_G,TS_G):-is_on(X_G,Y_G,TS_G),spatial_entity(X_G),spatial_entity(Y_G),X_G!=Y_G,timeStep(TS_G).
-encloses(Y_G,X_G,TS_G):-encloses(X_G,Y_G,TS_G),spatial_entity(X_G),spatial_entity(Y_G),X_G!=Y_G,timeStep(TS_G).
happened(e1,0).
happened(e2,1).
happened(e3,2).
happened(e4,3).
happened(e5,4).
happened(e6,5).
happened(e7,6).
happened(e8,7).
happened(e9,8).
happened(e10,9).
happened(e11,10).
happened(e12,11).
happened(e13,12).
happened(e14,13).
happened(e15,14).
happened(e16,15).
happened(e17,16).
happened(e18,17).
happened(e19,18).
happened(e20,19).
happened(e21,20).
happened(e22,21).
happened(e23,22).
happened(e24,23).
happened(e25,24).
happened(e26,25).
happened(e27,26).
happened(e28,27).
happened(e29,28).
happened(e30,29).
happened(e31,30).
happened(e32,31).
happened(e33,32).
happened(e34,33).
happened(e35,34).
happened(e36,35).
happened(e37,36).
happened(e38,37).
happened(e39,38).
happened(e40,39).
happened(e41,40).
happened(e42,41).
happened(e43,42).
happened(e44,43).
happened(e45,44).
happened(e46,45).
happened(e47,46).
happened(e48,47).
happened(e49,48).
happened(e50,49).
happened(e51,50).
happened(e52,51).
happened(e53,52).
happened(e54,53).
happened(e55,54).
happened(e56,55).
happened(e57,56).
happened(e58,57).
happened(e59,58).
happened(e60,59).
happened(e61,60).
happened(e62,61).
happened(e63,62).
happened(e64,63).
happened(e65,64).
happened(e66,65).
happened(e67,66).
happened(e68,67).
happened(e69,68).
happened(e70,69).
happened(e71,70).
happened(e72,71).
happened(e73,72).
happened(e74,73).
happened(e75,74).
happened(e76,75).
happened(e77,76).
happened(e78,77).
happened(e79,78).
happened(e80,79).
happened(e81,80).
happened(e82,81).
happened(e83,82).
happened(e84,83).
happened(e85,84).
happened(e86,85).
happened(e87,86).
happened(e88,87).
happened(e89,88).
happened(e90,89).
happened(e91,90).
happened(e92,91).
occurs(e1,0):-happened(e1,0).
occurs(e2,1):-happened(e2,1).
occurs(e3,2):-happened(e3,2).
occurs(e4,3):-happened(e4,3).
occurs(e5,4):-happened(e5,4).
occurs(e6,5):-happened(e6,5).
occurs(e7,6):-happened(e7,6).
occurs(e8,7):-happened(e8,7).
occurs(e9,8):-happened(e9,8).
occurs(e10,9):-happened(e10,9).
occurs(e11,10):-happened(e11,10).
occurs(e12,11):-happened(e12,11).
occurs(e13,12):-happened(e13,12).
occurs(e14,13):-happened(e14,13).
occurs(e15,14):-happened(e15,14).
occurs(e16,15):-happened(e16,15).
occurs(e17,16):-happened(e17,16).
occurs(e18,17):-happened(e18,17).
occurs(e19,18):-happened(e19,18).
occurs(e20,19):-happened(e20,19).
occurs(e21,20):-happened(e21,20).
occurs(e22,21):-happened(e22,21).
occurs(e23,22):-happened(e23,22).
occurs(e24,23):-happened(e24,23).
occurs(e25,24):-happened(e25,24).
occurs(e26,25):-happened(e26,25).
occurs(e27,26):-happened(e27,26).
occurs(e28,27):-happened(e28,27).
occurs(e29,28):-happened(e29,28).
occurs(e30,29):-happened(e30,29).
occurs(e31,30):-happened(e31,30).
occurs(e32,31):-happened(e32,31).
occurs(e33,32):-happened(e33,32).
occurs(e34,33):-happened(e34,33).
occurs(e35,34):-happened(e35,34).
occurs(e36,35):-happened(e36,35).
occurs(e37,36):-happened(e37,36).
occurs(e38,37):-happened(e38,37).
occurs(e39,38):-happened(e39,38).
occurs(e40,39):-happened(e40,39).
occurs(e41,40):-happened(e41,40).
occurs(e42,41):-happened(e42,41).
occurs(e43,42):-happened(e43,42).
occurs(e44,43):-happened(e44,43).
occurs(e45,44):-happened(e45,44).
occurs(e46,45):-happened(e46,45).
occurs(e47,46):-happened(e47,46).
occurs(e48,47):-happened(e48,47).
occurs(e49,48):-happened(e49,48).
occurs(e50,49):-happened(e50,49).
occurs(e51,50):-happened(e51,50).
occurs(e52,51):-happened(e52,51).
occurs(e53,52):-happened(e53,52).
occurs(e54,53):-happened(e54,53).
occurs(e55,54):-happened(e55,54).
occurs(e56,55):-happened(e56,55).
occurs(e57,56):-happened(e57,56).
occurs(e58,57):-happened(e58,57).
occurs(e59,58):-happened(e59,58).
occurs(e60,59):-happened(e60,59).
occurs(e61,60):-happened(e61,60).
occurs(e62,61):-happened(e62,61).
occurs(e63,62):-happened(e63,62).
occurs(e64,63):-happened(e64,63).
occurs(e65,64):-happened(e65,64).
occurs(e66,65):-happened(e66,65).
occurs(e67,66):-happened(e67,66).
occurs(e68,67):-happened(e68,67).
occurs(e69,68):-happened(e69,68).
occurs(e70,69):-happened(e70,69).
occurs(e71,70):-happened(e71,70).
occurs(e72,71):-happened(e72,71).
occurs(e73,72):-happened(e73,72).
occurs(e74,73):-happened(e74,73).
occurs(e75,74):-happened(e75,74).
occurs(e76,75):-happened(e76,75).
occurs(e77,76):-happened(e77,76).
occurs(e78,77):-happened(e78,77).
occurs(e79,78):-happened(e79,78).
occurs(e80,79):-happened(e80,79).
occurs(e81,80):-happened(e81,80).
occurs(e82,81):-happened(e82,81).
occurs(e83,82):-happened(e83,82).
occurs(e84,83):-happened(e84,83).
occurs(e85,84):-happened(e85,84).
occurs(e86,85):-happened(e86,85).
occurs(e87,86):-happened(e87,86).
occurs(e88,87):-happened(e88,87).
occurs(e89,88):-happened(e89,88).
occurs(e90,89):-happened(e90,89).
occurs(e91,90):-happened(e91,90).
occurs(e92,91):-happened(e92,91).
spatial_entity(r2).
spatial_entity(r3).
spatial_entity(r4).
spatial_entity(r5).
spatial_entity(r6).
spatial_entity(r7).
spatial_entity(r8).
spatial_entity(r9).
spatial_entity(r10).
spatial_entity(r12).
spatial_entity(r11).
spatial_entity(r13).
spatial_entity(r1).
entity(r2).
entity(r3).
entity(r4).
entity(r5).
entity(r6).
entity(r7).
entity(r8).
entity(r9).
entity(r10).
entity(r12).
entity(r11).
entity(r13).
entity(r1).
sort_hierarchy_nodes_(spatial_entity).
sort_hierarchy_nodes_(throw_17_1).
sort_hierarchy_nodes_(living_entity).
sort_hierarchy_nodes_(office).
sort_hierarchy_nodes_(supply).
sort_hierarchy_nodes_(inanimate_object).
sort_hierarchy_nodes_(get_13_5_1_1).
sort_hierarchy_nodes_(integers).
sort_hierarchy_nodes_(get_13_5_1).
sort_hierarchy_nodes_(timeStep).
sort_hierarchy_nodes_(put_9_1).
sort_hierarchy_nodes_(leave).
sort_hierarchy_nodes_(donate).
sort_hierarchy_nodes_(future_having_13_3).
sort_hierarchy_nodes_(bathroom).
sort_hierarchy_nodes_(fire_10_10).
sort_hierarchy_nodes_(obtain).
sort_hierarchy_nodes_(give).
sort_hierarchy_nodes_(tangible_entity).
sort_hierarchy_nodes_(hallway).
sort_hierarchy_nodes_(lose).
sort_hierarchy_nodes_(milk).
sort_hierarchy_nodes_(daniel).
sort_hierarchy_nodes_(feed).
sort_hierarchy_nodes_(take).
sort_hierarchy_nodes_(transfer).
sort_hierarchy_nodes_(steal_10_5).
sort_hierarchy_nodes_(throw_17_1_1).
sort_hierarchy_nodes_(john).
sort_hierarchy_nodes_(carry).
sort_hierarchy_nodes_(actions).
sort_hierarchy_nodes_(run_51_3_2_2_1).
sort_hierarchy_nodes_(physical_object).
sort_hierarchy_nodes_(activity).
sort_hierarchy_nodes_(steal_10_5_1).
sort_hierarchy_nodes_(locomotion).
sort_hierarchy_nodes_(deliver).
sort_hierarchy_nodes_(run_51_3_2).
sort_hierarchy_nodes_(apple).
sort_hierarchy_nodes_(booleans).
sort_hierarchy_nodes_(relinquish).
sort_hierarchy_nodes_(place).
sort_hierarchy_nodes_(event).
sort_hierarchy_nodes_(kitchen).
sort_hierarchy_nodes_(receive).
sort_hierarchy_nodes_(future_having_13_3_1).
sort_hierarchy_nodes_(move).
sort_hierarchy_nodes_(comparable_integers_subsort).
sort_hierarchy_nodes_(throw_17_1_1_1).
sort_hierarchy_nodes_(mary).
sort_hierarchy_nodes_(meander_47_7_1).
sort_hierarchy_nodes_(football).
sort_hierarchy_nodes_(go_to).
sort_hierarchy_nodes_(bedroom).
sort_hierarchy_nodes_(meander_47_7).
sort_hierarchy_nodes_(run_51_3_2_2).
sort_hierarchy_nodes_(run_51_3_2_1).
sort_hierarchy_nodes_(slide_11_2).
sort_hierarchy_nodes_(sandra).
sort_hierarchy_nodes_(put_9_1_1).
sort_hierarchy_nodes_(slide_11_2_1).
sort_hierarchy_nodes_(put_9_1_2).
sort_hierarchy_nodes_(universe).
sort_hierarchy_nodes_(garden).
sort_hierarchy_nodes_(thing).
sort_hierarchy_nodes_(entity).
sort_hierarchy_nodes_(walk).
universe(r2).
universe(e73).
universe(r3).
universe(e72).
universe(r4).
universe(e75).
universe(r5).
universe(e74).
universe(r6).
universe(e77).
universe(r7).
universe(e76).
universe(r8).
universe(e79).
universe(r9).
universe(e78).
universe(r10).
universe(r12).
universe(r11).
universe(r13).
universe(e80).
universe(e82).
universe(e81).
universe(e84).
universe(e83).
universe(e86).
universe(e85).
universe(e88).
universe(e87).
universe(e89).
universe(e91).
universe(e90).
universe(e92).
universe(e11).
universe(e10).
universe(e13).
universe(e12).
universe(e15).
universe(e14).
universe(e17).
universe(e16).
universe(e19).
universe(e18).
universe(e20).
universe(e22).
universe(e21).
universe(e24).
universe(e23).
universe(e26).
universe(e25).
universe(e28).
universe(e27).
universe(e1).
universe(e29).
universe(e2).
universe(e3).
universe(e4).
universe(e5).
universe(e6).
universe(e7).
universe(e8).
universe(e9).
universe(e31).
universe(e30).
universe(e33).
universe(e32).
universe(e35).
universe(e34).
universe(e37).
universe(e36).
universe(e39).
universe(e38).
universe(e40).
universe(e42).
universe(e41).
universe(e44).
universe(e43).
universe(e46).
universe(e45).
universe(e48).
universe(e47).
universe(e49).
universe(true).
universe(e51).
universe(e50).
universe(e53).
universe(e52).
universe(e55).
universe(e54).
universe(e57).
universe(e56).
universe(e59).
universe(e58).
universe(e60).
universe(e62).
universe(e61).
universe(e64).
universe(e63).
universe(e66).
universe(e65).
universe(e68).
universe(e67).
universe(false).
universe(e69).
universe(e71).
universe(r1).
universe(e70).
event(e73).
event(e72).
event(e75).
event(e31).
event(e30).
event(e74).
event(e77).
event(e33).
event(e32).
event(e76).
event(e79).
event(e35).
event(e78).
event(e34).
event(e37).
event(e36).
event(e39).
event(e38).
event(e80).
event(e82).
event(e81).
event(e84).
event(e40).
event(e83).
event(e42).
event(e86).
event(e41).
event(e85).
event(e88).
event(e44).
event(e43).
event(e87).
event(e46).
event(e89).
event(e45).
event(e48).
event(e47).
event(e49).
event(e91).
event(e90).
event(e92).
event(e51).
event(e50).
event(e53).
event(e52).
event(e11).
event(e55).
event(e10).
event(e54).
event(e57).
event(e13).
event(e12).
event(e56).
event(e15).
event(e59).
event(e58).
event(e14).
event(e17).
event(e16).
event(e19).
event(e18).
event(e60).
event(e62).
event(e61).
event(e64).
event(e20).
event(e63).
event(e22).
event(e66).
event(e65).
event(e21).
event(e68).
event(e24).
event(e23).
event(e67).
event(e26).
event(e69).
event(e25).
event(e28).
event(e27).
event(e1).
event(e29).
event(e2).
event(e3).
event(e4).
event(e5).
event(e6).
event(e7).
event(e8).
event(e9).
event(e71).
event(e70).
actions(e73).
actions(e72).
actions(e31).
actions(e75).
actions(e74).
actions(e30).
actions(e33).
actions(e77).
actions(e32).
actions(e76).
actions(e35).
actions(e79).
actions(e34).
actions(e78).
actions(e37).
actions(e36).
actions(e39).
actions(e38).
actions(e80).
actions(e82).
actions(e81).
actions(e84).
actions(e40).
actions(e83).
actions(e42).
actions(e86).
actions(e41).
actions(e85).
actions(e44).
actions(e88).
actions(e43).
actions(e87).
actions(e46).
actions(e89).
actions(e45).
actions(e48).
actions(e47).
actions(e49).
actions(e91).
actions(e90).
actions(e92).
actions(e51).
actions(e50).
actions(e53).
actions(e52).
actions(e11).
actions(e55).
actions(e10).
actions(e54).
actions(e13).
actions(e57).
actions(e12).
actions(e56).
actions(e15).
actions(e59).
actions(e14).
actions(e58).
actions(e17).
actions(e16).
actions(e19).
actions(e18).
actions(e60).
actions(e62).
actions(e61).
actions(e20).
actions(e64).
actions(e63).
actions(e66).
actions(e22).
actions(e65).
actions(e21).
actions(e68).
actions(e24).
actions(e67).
actions(e23).
actions(e26).
actions(e25).
actions(e69).
actions(e28).
actions(e27).
actions(e1).
actions(e29).
actions(e2).
actions(e3).
actions(e4).
actions(e5).
actions(e6).
actions(e7).
actions(e8).
actions(e9).
actions(e71).
actions(e70).
thing(r2).
thing(e73).
thing(r3).
thing(e72).
thing(r4).
thing(e75).
thing(r5).
thing(e74).
thing(r6).
thing(e77).
thing(r7).
thing(e76).
thing(r8).
thing(e79).
thing(r9).
thing(e78).
thing(r10).
thing(r12).
thing(r11).
thing(r13).
thing(e80).
thing(e82).
thing(e81).
thing(e84).
thing(e83).
thing(e86).
thing(e85).
thing(e88).
thing(e87).
thing(e89).
thing(e91).
thing(e90).
thing(e92).
thing(e11).
thing(e10).
thing(e13).
thing(e12).
thing(e15).
thing(e14).
thing(e17).
thing(e16).
thing(e19).
thing(e18).
thing(e20).
thing(e22).
thing(e21).
thing(e24).
thing(e23).
thing(e26).
thing(e25).
thing(e28).
thing(e27).
thing(e1).
thing(e29).
thing(e2).
thing(e3).
thing(e4).
thing(e5).
thing(e6).
thing(e7).
thing(e8).
thing(e9).
thing(e31).
thing(e30).
thing(e33).
thing(e32).
thing(e35).
thing(e34).
thing(e37).
thing(e36).
thing(e39).
thing(e38).
thing(e40).
thing(e42).
thing(e41).
thing(e44).
thing(e43).
thing(e46).
thing(e45).
thing(e48).
thing(e47).
thing(e49).
thing(e51).
thing(e50).
thing(e53).
thing(e52).
thing(e55).
thing(e54).
thing(e57).
thing(e56).
thing(e59).
thing(e58).
thing(e60).
thing(e62).
thing(e61).
thing(e64).
thing(e63).
thing(e66).
thing(e65).
thing(e68).
thing(e67).
thing(e69).
thing(e71).
thing(r1).
thing(e70).
living_entity(r10).
living_entity(r5).
living_entity(r6).
living_entity(r13).
living_entity(r8).
living_entity(r9).
living_entity(r1).
tangible_entity(r10).
tangible_entity(r5).
tangible_entity(r6).
tangible_entity(r13).
tangible_entity(r8).
tangible_entity(r9).
tangible_entity(r1).
timeStep(44).
timeStep(88).
timeStep(45).
timeStep(89).
timeStep(46).
timeStep(47).
timeStep(48).
timeStep(49).
timeStep(90).
timeStep(91).
timeStep(92).
timeStep(50).
timeStep(51).
timeStep(52).
timeStep(53).
timeStep(10).
timeStep(54).
timeStep(11).
timeStep(55).
timeStep(12).
timeStep(56).
timeStep(13).
timeStep(57).
timeStep(14).
timeStep(58).
timeStep(15).
timeStep(59).
timeStep(16).
timeStep(17).
timeStep(18).
timeStep(19).
timeStep(0).
timeStep(1).
timeStep(2).
timeStep(3).
timeStep(4).
timeStep(5).
timeStep(6).
timeStep(7).
timeStep(8).
timeStep(9).
timeStep(60).
timeStep(61).
timeStep(62).
timeStep(63).
timeStep(20).
timeStep(64).
timeStep(21).
timeStep(65).
timeStep(22).
timeStep(66).
timeStep(23).
timeStep(67).
timeStep(24).
timeStep(68).
timeStep(25).
timeStep(69).
timeStep(26).
timeStep(27).
timeStep(28).
timeStep(29).
timeStep(70).
timeStep(71).
timeStep(72).
timeStep(73).
timeStep(30).
timeStep(74).
timeStep(31).
timeStep(75).
timeStep(32).
timeStep(76).
timeStep(33).
timeStep(77).
timeStep(34).
timeStep(78).
timeStep(35).
timeStep(79).
timeStep(36).
timeStep(37).
timeStep(38).
timeStep(39).
timeStep(80).
timeStep(81).
timeStep(82).
timeStep(83).
timeStep(40).
timeStep(84).
timeStep(41).
timeStep(85).
timeStep(42).
timeStep(86).
timeStep(43).
timeStep(87).
event_path_(X1,X2):-event_path(X1,X2).
event_path__(X1,X2):--event_path(X1,X2).
dom_is_restrained_(X1,X2):-dom_is_restrained(X1,X2).
dom_is_restrained__(X1,X2):--dom_is_restrained(X1,X2).
is_near_(X1,X2,X3):-is_near(X1,X2,X3).
is_near__(X1,X2,X3):--is_near(X1,X2,X3).
defined_path_(X1):-defined_path(X1).
defined_path__(X1):--defined_path(X1).
defined_raw_material_(X1):-defined_raw_material(X1).
defined_raw_material__(X1):--defined_raw_material(X1).
is_under_(X1,X2,X3):-is_under(X1,X2,X3).
is_under__(X1,X2,X3):--is_under(X1,X2,X3).
event_raw_material_(X1,X2):-event_raw_material(X1,X2).
event_raw_material__(X1,X2):--event_raw_material(X1,X2).
observed_(X1,X2,X3):-observed(X1,X2,X3).
observed__(X1,X2,X3):--observed(X1,X2,X3).
is_outside_(X1,X2,X3):-is_outside(X1,X2,X3).
is_outside__(X1,X2,X3):--is_outside(X1,X2,X3).
dom_confined_to_(X1,X2,X3):-dom_confined_to(X1,X2,X3).
dom_confined_to__(X1,X2,X3):--dom_confined_to(X1,X2,X3).
dom_is_in_front_of_(X1,X2,X3):-dom_is_in_front_of(X1,X2,X3).
dom_is_in_front_of__(X1,X2,X3):--dom_is_in_front_of(X1,X2,X3).
dom_actions_vn_instrument_(X1,X2):-dom_actions_vn_instrument(X1,X2).
dom_actions_vn_instrument__(X1,X2):--dom_actions_vn_instrument(X1,X2).
dom_is_accessible_(X1,X2):-dom_is_accessible(X1,X2).
dom_is_accessible__(X1,X2):--dom_is_accessible(X1,X2).
has_part_(X1,X2,X3):-has_part(X1,X2,X3).
has_part__(X1,X2,X3):--has_part(X1,X2,X3).
dom_occurs_(X1,X2):-dom_occurs(X1,X2).
dom_occurs__(X1,X2):--dom_occurs(X1,X2).
event_toward_(X1,X2):-event_toward(X1,X2).
event_toward__(X1,X2):--event_toward(X1,X2).
is_above_(X1,X2,X3):-is_above(X1,X2,X3).
is_above__(X1,X2,X3):--is_above(X1,X2,X3).
dom_actions_vn_source_(X1,X2):-dom_actions_vn_source(X1,X2).
dom_actions_vn_source__(X1,X2):--dom_actions_vn_source(X1,X2).
shut_out_of_(X1,X2,X3):-shut_out_of(X1,X2,X3).
shut_out_of__(X1,X2,X3):--shut_out_of(X1,X2,X3).
defined_donor_(X1):-defined_donor(X1).
defined_donor__(X1):--defined_donor(X1).
dom_is_over_(X1,X2,X3):-dom_is_over(X1,X2,X3).
dom_is_over__(X1,X2,X3):--dom_is_over(X1,X2,X3).
defined_result_(X1):-defined_result(X1).
defined_result__(X1):--defined_result(X1).
dom_known_to_(X1,X2,X3):-dom_known_to(X1,X2,X3).
dom_known_to__(X1,X2,X3):--dom_known_to(X1,X2,X3).
dom_actions_vn_cause_(X1,X2):-dom_actions_vn_cause(X1,X2).
dom_actions_vn_cause__(X1,X2):--dom_actions_vn_cause(X1,X2).
dom_actions_vn_value_(X1,X2):-dom_actions_vn_value(X1,X2).
dom_actions_vn_value__(X1,X2):--dom_actions_vn_value(X1,X2).
dom_defined_toward_(X1):-dom_defined_toward(X1).
dom_defined_toward__(X1):--dom_defined_toward(X1).
dom_actions_vn_product_(X1,X2):-dom_actions_vn_product(X1,X2).
dom_actions_vn_product__(X1,X2):--dom_actions_vn_product(X1,X2).
defined_recipient_(X1):-defined_recipient(X1).
defined_recipient__(X1):--defined_recipient(X1).
dom_sink_(X1):-dom_sink(X1).
dom_sink__(X1):--dom_sink(X1).
dom_is_opposite_(X1,X2,X3):-dom_is_opposite(X1,X2,X3).
dom_is_opposite__(X1,X2,X3):--dom_is_opposite(X1,X2,X3).
actions_vn_copatient_(X1,X2):-actions_vn_copatient(X1,X2).
actions_vn_copatient__(X1,X2):--actions_vn_copatient(X1,X2).
dom_actions_vn_cotheme_(X1,X2):-dom_actions_vn_cotheme(X1,X2).
dom_actions_vn_cotheme__(X1,X2):--dom_actions_vn_cotheme(X1,X2).
dom_event_instrument_(X1,X2):-dom_event_instrument(X1,X2).
dom_event_instrument__(X1,X2):--dom_event_instrument(X1,X2).
event_origin_(X1,X2):-event_origin(X1,X2).
event_origin__(X1,X2):--event_origin(X1,X2).
dom_actions_vn_theme_(X1,X2):-dom_actions_vn_theme(X1,X2).
dom_actions_vn_theme__(X1,X2):--dom_actions_vn_theme(X1,X2).
dom_defined_site_(X1):-dom_defined_site(X1).
dom_defined_site__(X1):--dom_defined_site(X1).
defined_instrument_(X1):-defined_instrument(X1).
defined_instrument__(X1):--defined_instrument(X1).
dom_defined_origin_(X1):-dom_defined_origin(X1).
dom_defined_origin__(X1):--dom_defined_origin(X1).
actions_vn_experiencer_(X1,X2):-actions_vn_experiencer(X1,X2).
actions_vn_experiencer__(X1,X2):--actions_vn_experiencer(X1,X2).
actions_vn_source_(X1,X2):-actions_vn_source(X1,X2).
actions_vn_source__(X1,X2):--actions_vn_source(X1,X2).
dom_event_path_(X1,X2):-dom_event_path(X1,X2).
dom_event_path__(X1,X2):--dom_event_path(X1,X2).
actions_vn_recipient_(X1,X2):-actions_vn_recipient(X1,X2).
actions_vn_recipient__(X1,X2):--actions_vn_recipient(X1,X2).
actions_vn_initial_location_(X1,X2):-actions_vn_initial_location(X1,X2).
actions_vn_initial_location__(X1,X2):--actions_vn_initial_location(X1,X2).
dom_is_a_(X1,X2):-dom_is_a(X1,X2).
dom_is_a__(X1,X2):--dom_is_a(X1,X2).
actions_vn_beneficiary_(X1,X2):-actions_vn_beneficiary(X1,X2).
actions_vn_beneficiary__(X1,X2):--actions_vn_beneficiary(X1,X2).
dom_defined_experiencer_(X1):-dom_defined_experiencer(X1).
dom_defined_experiencer__(X1):--dom_defined_experiencer(X1).
dom_defined_recipient_(X1):-dom_defined_recipient(X1).
dom_defined_recipient__(X1):--dom_defined_recipient(X1).
dom_is_between_(X1,X2,X3):-dom_is_between(X1,X2,X3).
dom_is_between__(X1,X2,X3):--dom_is_between(X1,X2,X3).
is_beside_(X1,X2,X3):-is_beside(X1,X2,X3).
is_beside__(X1,X2,X3):--is_beside(X1,X2,X3).
dom_actions_vn_initial_location_(X1,X2):-dom_actions_vn_initial_location(X1,X2).
dom_actions_vn_initial_location__(X1,X2):--dom_actions_vn_initial_location(X1,X2).
dom_defined_beneficiary_(X1):-dom_defined_beneficiary(X1).
dom_defined_beneficiary__(X1):--dom_defined_beneficiary(X1).
dom_actions_vn_predicate_(X1,X2):-dom_actions_vn_predicate(X1,X2).
dom_actions_vn_predicate__(X1,X2):--dom_actions_vn_predicate(X1,X2).
dom_is_beside_(X1,X2,X3):-dom_is_beside(X1,X2,X3).
dom_is_beside__(X1,X2,X3):--dom_is_beside(X1,X2,X3).
dom_subsort_(X1,X2):-dom_subsort(X1,X2).
dom_subsort__(X1,X2):--dom_subsort(X1,X2).
dom_actions_vn_attribute_(X1,X2):-dom_actions_vn_attribute(X1,X2).
dom_actions_vn_attribute__(X1,X2):--dom_actions_vn_attribute(X1,X2).
dom_defined_away_from_(X1):-dom_defined_away_from(X1).
dom_defined_away_from__(X1):--dom_defined_away_from(X1).
defined_experiencer_(X1):-defined_experiencer(X1).
defined_experiencer__(X1):--defined_experiencer(X1).
abuts_(X1,X2,X3):-abuts(X1,X2,X3).
abuts__(X1,X2,X3):--abuts(X1,X2,X3).
actions_vn_product_(X1,X2):-actions_vn_product(X1,X2).
actions_vn_product__(X1,X2):--actions_vn_product(X1,X2).
has_child_(X1):-has_child(X1).
has_child__(X1):--has_child(X1).
dom_actions_vn_destination_(X1,X2):-dom_actions_vn_destination(X1,X2).
dom_actions_vn_destination__(X1,X2):--dom_actions_vn_destination(X1,X2).
defined_beneficiary_(X1):-defined_beneficiary(X1).
defined_beneficiary__(X1):--defined_beneficiary(X1).
dom_is_known_(X1,X2):-dom_is_known(X1,X2).
dom_is_known__(X1,X2):--dom_is_known(X1,X2).
is_confined_(X1,X2):-is_confined(X1,X2).
is_confined__(X1,X2):--is_confined(X1,X2).
actions_vn_instrument_(X1,X2):-actions_vn_instrument(X1,X2).
actions_vn_instrument__(X1,X2):--actions_vn_instrument(X1,X2).
dom_contained_in_(X1,X2,X3):-dom_contained_in(X1,X2,X3).
dom_contained_in__(X1,X2,X3):--dom_contained_in(X1,X2,X3).
dom_source_(X1):-dom_source(X1).
dom_source__(X1):--dom_source(X1).
dom_is_below_(X1,X2,X3):-dom_is_below(X1,X2,X3).
dom_is_below__(X1,X2,X3):--dom_is_below(X1,X2,X3).
is_accessible_(X1,X2):-is_accessible(X1,X2).
is_accessible__(X1,X2):--is_accessible(X1,X2).
source_(X1):-source(X1).
source__(X1):--source(X1).
defined_destination_(X1):-defined_destination(X1).
defined_destination__(X1):--defined_destination(X1).
dom_is_confined_(X1,X2):-dom_is_confined(X1,X2).
dom_is_confined__(X1,X2):--dom_is_confined(X1,X2).
dom_event_donor_(X1,X2):-dom_event_donor(X1,X2).
dom_event_donor__(X1,X2):--dom_event_donor(X1,X2).
actions_vn_result_(X1,X2):-actions_vn_result(X1,X2).
actions_vn_result__(X1,X2):--actions_vn_result(X1,X2).
is_at_(X1,X2,X3):-is_at(X1,X2,X3).
is_at__(X1,X2,X3):--is_at(X1,X2,X3).
dom_location_(X1,X2,X3):-dom_location(X1,X2,X3).
dom_location__(X1,X2,X3):--dom_location(X1,X2,X3).
dom_actions_vn_initial_state_(X1,X2):-dom_actions_vn_initial_state(X1,X2).
dom_actions_vn_initial_state__(X1,X2):--dom_actions_vn_initial_state(X1,X2).
dom_event_raw_material_(X1,X2):-dom_event_raw_material(X1,X2).
dom_event_raw_material__(X1,X2):--dom_event_raw_material(X1,X2).
is_closed_(X1,X2):-is_closed(X1,X2).
is_closed__(X1,X2):--is_closed(X1,X2).
is_opposite_(X1,X2,X3):-is_opposite(X1,X2,X3).
is_opposite__(X1,X2,X3):--is_opposite(X1,X2,X3).
dom_accessible_to_(X1,X2,X3):-dom_accessible_to(X1,X2,X3).
dom_accessible_to__(X1,X2,X3):--dom_accessible_to(X1,X2,X3).
defined_origin_(X1):-defined_origin(X1).
defined_origin__(X1):--defined_origin(X1).
actions_vn_cause_(X1,X2):-actions_vn_cause(X1,X2).
actions_vn_cause__(X1,X2):--actions_vn_cause(X1,X2).
is_below_(X1,X2,X3):-is_below(X1,X2,X3).
is_below__(X1,X2,X3):--is_below(X1,X2,X3).
dom_defined_donor_(X1):-dom_defined_donor(X1).
dom_defined_donor__(X1):--dom_defined_donor(X1).
defined_away_from_(X1):-defined_away_from(X1).
defined_away_from__(X1):--defined_away_from(X1).
actions_vn_agent_(X1,X2):-actions_vn_agent(X1,X2).
actions_vn_agent__(X1,X2):--actions_vn_agent(X1,X2).
sink_(X1):-sink(X1).
sink__(X1):--sink(X1).
actions_vn_stimulus_(X1,X2):-actions_vn_stimulus(X1,X2).
actions_vn_stimulus__(X1,X2):--actions_vn_stimulus(X1,X2).
actions_vn_value_(X1,X2):-actions_vn_value(X1,X2).
actions_vn_value__(X1,X2):--actions_vn_value(X1,X2).
dom_is_on_(X1,X2,X3):-dom_is_on(X1,X2,X3).
dom_is_on__(X1,X2,X3):--dom_is_on(X1,X2,X3).
dom_actions_vn_location_(X1,X2):-dom_actions_vn_location(X1,X2).
dom_actions_vn_location__(X1,X2):--dom_actions_vn_location(X1,X2).
dom_actions_vn_actor_(X1,X2):-dom_actions_vn_actor(X1,X2).
dom_actions_vn_actor__(X1,X2):--dom_actions_vn_actor(X1,X2).
dom_actions_vn_material_(X1,X2):-dom_actions_vn_material(X1,X2).
dom_actions_vn_material__(X1,X2):--dom_actions_vn_material(X1,X2).
dom_instance_(X1,X2):-dom_instance(X1,X2).
dom_instance__(X1,X2):--dom_instance(X1,X2).
is_a_(X1,X2):-is_a(X1,X2).
is_a__(X1,X2):--is_a(X1,X2).
encloses_(X1,X2,X3):-encloses(X1,X2,X3).
encloses__(X1,X2,X3):--encloses(X1,X2,X3).
dom_event_agent_(X1,X2):-dom_event_agent(X1,X2).
dom_event_agent__(X1,X2):--dom_event_agent(X1,X2).
known_to_(X1,X2,X3):-known_to(X1,X2,X3).
known_to__(X1,X2,X3):--known_to(X1,X2,X3).
dom_is_along_(X1,X2,X3):-dom_is_along(X1,X2,X3).
dom_is_along__(X1,X2,X3):--dom_is_along(X1,X2,X3).
is_contained_(X1,X2):-is_contained(X1,X2).
is_contained__(X1,X2):--is_contained(X1,X2).
actions_vn_pivot_(X1,X2):-actions_vn_pivot(X1,X2).
actions_vn_pivot__(X1,X2):--actions_vn_pivot(X1,X2).
actions_vn_asset_(X1,X2):-actions_vn_asset(X1,X2).
actions_vn_asset__(X1,X2):--actions_vn_asset(X1,X2).
content_(X1,X2,X3):-content(X1,X2,X3).
content__(X1,X2,X3):--content(X1,X2,X3).
actions_vn_cotheme_(X1,X2):-actions_vn_cotheme(X1,X2).
actions_vn_cotheme__(X1,X2):--actions_vn_cotheme(X1,X2).
dom_encloses_(X1,X2,X3):-dom_encloses(X1,X2,X3).
dom_encloses__(X1,X2,X3):--dom_encloses(X1,X2,X3).
is_over_(X1,X2,X3):-is_over(X1,X2,X3).
is_over__(X1,X2,X3):--is_over(X1,X2,X3).
actions_vn_patient_(X1,X2):-actions_vn_patient(X1,X2).
actions_vn_patient__(X1,X2):--actions_vn_patient(X1,X2).
accessible_to_(X1,X2,X3):-accessible_to(X1,X2,X3).
accessible_to__(X1,X2,X3):--accessible_to(X1,X2,X3).
dom_is_touching_(X1,X2,X3):-dom_is_touching(X1,X2,X3).
dom_is_touching__(X1,X2,X3):--dom_is_touching(X1,X2,X3).
dom_is_outside_(X1,X2,X3):-dom_is_outside(X1,X2,X3).
dom_is_outside__(X1,X2,X3):--dom_is_outside(X1,X2,X3).
dom_is_near_(X1,X2,X3):-dom_is_near(X1,X2,X3).
dom_is_near__(X1,X2,X3):--dom_is_near(X1,X2,X3).
dom_actions_vn_copatient_(X1,X2):-dom_actions_vn_copatient(X1,X2).
dom_actions_vn_copatient__(X1,X2):--dom_actions_vn_copatient(X1,X2).
dom_defined_object_(X1):-dom_defined_object(X1).
dom_defined_object__(X1):--dom_defined_object(X1).
dom_actions_vn_reflexive_(X1,X2):-dom_actions_vn_reflexive(X1,X2).
dom_actions_vn_reflexive__(X1,X2):--dom_actions_vn_reflexive(X1,X2).
dom_defined_result_(X1):-dom_defined_result(X1).
dom_defined_result__(X1):--dom_defined_result(X1).
dom_event_destination_(X1,X2):-dom_event_destination(X1,X2).
dom_event_destination__(X1,X2):--dom_event_destination(X1,X2).
dom_defined_base_(X1):-dom_defined_base(X1).
dom_defined_base__(X1):--dom_defined_base(X1).
dom_event_object_(X1,X2):-dom_event_object(X1,X2).
dom_event_object__(X1,X2):--dom_event_object(X1,X2).
is_on_(X1,X2,X3):-is_on(X1,X2,X3).
is_on__(X1,X2,X3):--is_on(X1,X2,X3).
actions_vn_coagent_(X1,X2):-actions_vn_coagent(X1,X2).
actions_vn_coagent__(X1,X2):--actions_vn_coagent(X1,X2).
dom_event_result_(X1,X2):-dom_event_result(X1,X2).
dom_event_result__(X1,X2):--dom_event_result(X1,X2).
event_agent_(X1,X2):-event_agent(X1,X2).
event_agent__(X1,X2):--event_agent(X1,X2).
is_touching_(X1,X2,X3):-is_touching(X1,X2,X3).
is_touching__(X1,X2,X3):--is_touching(X1,X2,X3).
dom_actions_vn_recipient_(X1,X2):-dom_actions_vn_recipient(X1,X2).
dom_actions_vn_recipient__(X1,X2):--dom_actions_vn_recipient(X1,X2).
dom_actions_vn_topic_(X1,X2):-dom_actions_vn_topic(X1,X2).
dom_actions_vn_topic__(X1,X2):--dom_actions_vn_topic(X1,X2).
actions_vn_theme_(X1,X2):-actions_vn_theme(X1,X2).
actions_vn_theme__(X1,X2):--actions_vn_theme(X1,X2).
location_(X1,X2,X3):-location(X1,X2,X3).
location__(X1,X2,X3):--location(X1,X2,X3).
actions_vn_extent_(X1,X2):-actions_vn_extent(X1,X2).
actions_vn_extent__(X1,X2):--actions_vn_extent(X1,X2).
dom_actions_vn_time_(X1,X2):-dom_actions_vn_time(X1,X2).
dom_actions_vn_time__(X1,X2):--dom_actions_vn_time(X1,X2).
dom_is_above_(X1,X2,X3):-dom_is_above(X1,X2,X3).
dom_is_above__(X1,X2,X3):--dom_is_above(X1,X2,X3).
occurs_(X1,X2):-occurs(X1,X2).
occurs__(X1,X2):--occurs(X1,X2).
is_known_(X1,X2):-is_known(X1,X2).
is_known__(X1,X2):--is_known(X1,X2).
dom_actions_vn_beneficiary_(X1,X2):-dom_actions_vn_beneficiary(X1,X2).
dom_actions_vn_beneficiary__(X1,X2):--dom_actions_vn_beneficiary(X1,X2).
dom_blocked_with_(X1,X2,X3):-dom_blocked_with(X1,X2,X3).
dom_blocked_with__(X1,X2,X3):--dom_blocked_with(X1,X2,X3).
defined_agent_(X1):-defined_agent(X1).
defined_agent__(X1):--defined_agent(X1).
dom_actions_vn_experiencer_(X1,X2):-dom_actions_vn_experiencer(X1,X2).
dom_actions_vn_experiencer__(X1,X2):--dom_actions_vn_experiencer(X1,X2).
dom_is_inside_(X1,X2,X3):-dom_is_inside(X1,X2,X3).
dom_is_inside__(X1,X2,X3):--dom_is_inside(X1,X2,X3).
dom_defined_raw_material_(X1):-dom_defined_raw_material(X1).
dom_defined_raw_material__(X1):--dom_defined_raw_material(X1).
dom_is_under_(X1,X2,X3):-dom_is_under(X1,X2,X3).
dom_is_under__(X1,X2,X3):--dom_is_under(X1,X2,X3).
event_recipient_(X1,X2):-event_recipient(X1,X2).
event_recipient__(X1,X2):--event_recipient(X1,X2).
actions_vn_predicate_(X1,X2):-actions_vn_predicate(X1,X2).
actions_vn_predicate__(X1,X2):--actions_vn_predicate(X1,X2).
defined_site_(X1):-defined_site(X1).
defined_site__(X1):--defined_site(X1).
dom_actions_vn_pivot_(X1,X2):-dom_actions_vn_pivot(X1,X2).
dom_actions_vn_pivot__(X1,X2):--dom_actions_vn_pivot(X1,X2).
actions_vn_attribute_(X1,X2):-actions_vn_attribute(X1,X2).
actions_vn_attribute__(X1,X2):--actions_vn_attribute(X1,X2).
dom_shut_out_of_(X1,X2,X3):-dom_shut_out_of(X1,X2,X3).
dom_shut_out_of__(X1,X2,X3):--dom_shut_out_of(X1,X2,X3).
dom_possesses_(X1,X2,X3):-dom_possesses(X1,X2,X3).
dom_possesses__(X1,X2,X3):--dom_possesses(X1,X2,X3).
dom_event_origin_(X1,X2):-dom_event_origin(X1,X2).
dom_event_origin__(X1,X2):--dom_event_origin(X1,X2).
dom_actions_vn_causer_(X1,X2):-dom_actions_vn_causer(X1,X2).
dom_actions_vn_causer__(X1,X2):--dom_actions_vn_causer(X1,X2).
confined_to_(X1,X2,X3):-confined_to(X1,X2,X3).
confined_to__(X1,X2,X3):--confined_to(X1,X2,X3).
is_held_(X1,X2):-is_held(X1,X2).
is_held__(X1,X2):--is_held(X1,X2).
dom_held_by_(X1,X2,X3):-dom_held_by(X1,X2,X3).
dom_held_by__(X1,X2,X3):--dom_held_by(X1,X2,X3).
dom_is_behind_(X1,X2,X3):-dom_is_behind(X1,X2,X3).
dom_is_behind__(X1,X2,X3):--dom_is_behind(X1,X2,X3).
dom_event_site_(X1,X2):-dom_event_site(X1,X2).
dom_event_site__(X1,X2):--dom_event_site(X1,X2).
actions_vn_causer_(X1,X2):-actions_vn_causer(X1,X2).
actions_vn_causer__(X1,X2):--actions_vn_causer(X1,X2).
is_behind_(X1,X2,X3):-is_behind(X1,X2,X3).
is_behind__(X1,X2,X3):--is_behind(X1,X2,X3).
dom_event_away_from_(X1,X2):-dom_event_away_from(X1,X2).
dom_event_away_from__(X1,X2):--dom_event_away_from(X1,X2).
defined_toward_(X1):-defined_toward(X1).
defined_toward__(X1):--defined_toward(X1).
dom_has_part_(X1,X2,X3):-dom_has_part(X1,X2,X3).
dom_has_part__(X1,X2,X3):--dom_has_part(X1,X2,X3).
dom_is_at_(X1,X2,X3):-dom_is_at(X1,X2,X3).
dom_is_at__(X1,X2,X3):--dom_is_at(X1,X2,X3).
dom_event_toward_(X1,X2):-dom_event_toward(X1,X2).
dom_event_toward__(X1,X2):--dom_event_toward(X1,X2).
dom_event_beneficiary_(X1,X2):-dom_event_beneficiary(X1,X2).
dom_event_beneficiary__(X1,X2):--dom_event_beneficiary(X1,X2).
dom_actions_vn_goal_(X1,X2):-dom_actions_vn_goal(X1,X2).
dom_actions_vn_goal__(X1,X2):--dom_actions_vn_goal(X1,X2).
dom_has_child_(X1):-dom_has_child(X1).
dom_has_child__(X1):--dom_has_child(X1).
actions_vn_trajectory_(X1,X2):-actions_vn_trajectory(X1,X2).
actions_vn_trajectory__(X1,X2):--actions_vn_trajectory(X1,X2).
is_along_(X1,X2,X3):-is_along(X1,X2,X3).
is_along__(X1,X2,X3):--is_along(X1,X2,X3).
event_site_(X1,X2):-event_site(X1,X2).
event_site__(X1,X2):--event_site(X1,X2).
event_experiencer_(X1,X2):-event_experiencer(X1,X2).
event_experiencer__(X1,X2):--event_experiencer(X1,X2).
dom_event_recipient_(X1,X2):-dom_event_recipient(X1,X2).
dom_event_recipient__(X1,X2):--dom_event_recipient(X1,X2).
happened_(X1,X2):-happened(X1,X2).
happened__(X1,X2):--happened(X1,X2).
subsort_(X1,X2):-subsort(X1,X2).
subsort__(X1,X2):--subsort(X1,X2).
is_between_(X1,X2,X3):-is_between(X1,X2,X3).
is_between__(X1,X2,X3):--is_between(X1,X2,X3).
event_beneficiary_(X1,X2):-event_beneficiary(X1,X2).
event_beneficiary__(X1,X2):--event_beneficiary(X1,X2).
dom_actions_vn_trajectory_(X1,X2):-dom_actions_vn_trajectory(X1,X2).
dom_actions_vn_trajectory__(X1,X2):--dom_actions_vn_trajectory(X1,X2).
event_donor_(X1,X2):-event_donor(X1,X2).
event_donor__(X1,X2):--event_donor(X1,X2).
instance_(X1,X2):-instance(X1,X2).
instance__(X1,X2):--instance(X1,X2).
event_away_from_(X1,X2):-event_away_from(X1,X2).
event_away_from__(X1,X2):--event_away_from(X1,X2).
dom_defined_destination_(X1):-dom_defined_destination(X1).
dom_defined_destination__(X1):--dom_defined_destination(X1).
dom_event_experiencer_(X1,X2):-dom_event_experiencer(X1,X2).
dom_event_experiencer__(X1,X2):--dom_event_experiencer(X1,X2).
actions_vn_goal_(X1,X2):-actions_vn_goal(X1,X2).
actions_vn_goal__(X1,X2):--actions_vn_goal(X1,X2).
is_restrained_(X1,X2):-is_restrained(X1,X2).
is_restrained__(X1,X2):--is_restrained(X1,X2).
dom_actions_vn_patient_(X1,X2):-dom_actions_vn_patient(X1,X2).
dom_actions_vn_patient__(X1,X2):--dom_actions_vn_patient(X1,X2).
actions_vn_topic_(X1,X2):-actions_vn_topic(X1,X2).
actions_vn_topic__(X1,X2):--actions_vn_topic(X1,X2).
is_in_front_of_(X1,X2,X3):-is_in_front_of(X1,X2,X3).
is_in_front_of__(X1,X2,X3):--is_in_front_of(X1,X2,X3).
dom_actions_vn_coagent_(X1,X2):-dom_actions_vn_coagent(X1,X2).
dom_actions_vn_coagent__(X1,X2):--dom_actions_vn_coagent(X1,X2).
dom_actions_vn_asset_(X1,X2):-dom_actions_vn_asset(X1,X2).
dom_actions_vn_asset__(X1,X2):--dom_actions_vn_asset(X1,X2).
actions_vn_initial_state_(X1,X2):-actions_vn_initial_state(X1,X2).
actions_vn_initial_state__(X1,X2):--actions_vn_initial_state(X1,X2).
held_by_(X1,X2,X3):-held_by(X1,X2,X3).
held_by__(X1,X2,X3):--held_by(X1,X2,X3).
actions_vn_material_(X1,X2):-actions_vn_material(X1,X2).
actions_vn_material__(X1,X2):--actions_vn_material(X1,X2).
is_inside_(X1,X2,X3):-is_inside(X1,X2,X3).
is_inside__(X1,X2,X3):--is_inside(X1,X2,X3).
event_instrument_(X1,X2):-event_instrument(X1,X2).
event_instrument__(X1,X2):--event_instrument(X1,X2).
actions_vn_reflexive_(X1,X2):-actions_vn_reflexive(X1,X2).
actions_vn_reflexive__(X1,X2):--actions_vn_reflexive(X1,X2).
dom_abuts_(X1,X2,X3):-dom_abuts(X1,X2,X3).
dom_abuts__(X1,X2,X3):--dom_abuts(X1,X2,X3).
actions_vn_location_(X1,X2):-actions_vn_location(X1,X2).
actions_vn_location__(X1,X2):--actions_vn_location(X1,X2).
dom_defined_path_(X1):-dom_defined_path(X1).
dom_defined_path__(X1):--dom_defined_path(X1).
possesses_(X1,X2,X3):-possesses(X1,X2,X3).
possesses__(X1,X2,X3):--possesses(X1,X2,X3).
dom_actions_vn_agent_(X1,X2):-dom_actions_vn_agent(X1,X2).
dom_actions_vn_agent__(X1,X2):--dom_actions_vn_agent(X1,X2).
dom_defined_agent_(X1):-dom_defined_agent(X1).
dom_defined_agent__(X1):--dom_defined_agent(X1).
dom_defined_instrument_(X1):-dom_defined_instrument(X1).
dom_defined_instrument__(X1):--dom_defined_instrument(X1).
event_destination_(X1,X2):-event_destination(X1,X2).
event_destination__(X1,X2):--event_destination(X1,X2).
link_(X1,X2):-link(X1,X2).
link__(X1,X2):--link(X1,X2).
event_result_(X1,X2):-event_result(X1,X2).
event_result__(X1,X2):--event_result(X1,X2).
defined_base_(X1):-defined_base(X1).
defined_base__(X1):--defined_base(X1).
contained_in_(X1,X2,X3):-contained_in(X1,X2,X3).
contained_in__(X1,X2,X3):--contained_in(X1,X2,X3).
actions_vn_actor_(X1,X2):-actions_vn_actor(X1,X2).
actions_vn_actor__(X1,X2):--actions_vn_actor(X1,X2).
dom_is_held_(X1,X2):-dom_is_held(X1,X2).
dom_is_held__(X1,X2):--dom_is_held(X1,X2).
actions_vn_time_(X1,X2):-actions_vn_time(X1,X2).
actions_vn_time__(X1,X2):--actions_vn_time(X1,X2).
event_object_(X1,X2):-event_object(X1,X2).
event_object__(X1,X2):--event_object(X1,X2).
dom_actions_vn_extent_(X1,X2):-dom_actions_vn_extent(X1,X2).
dom_actions_vn_extent__(X1,X2):--dom_actions_vn_extent(X1,X2).
dom_link_(X1,X2):-dom_link(X1,X2).
dom_link__(X1,X2):--dom_link(X1,X2).
dom_actions_vn_stimulus_(X1,X2):-dom_actions_vn_stimulus(X1,X2).
dom_actions_vn_stimulus__(X1,X2):--dom_actions_vn_stimulus(X1,X2).
has_parent_(X1):-has_parent(X1).
has_parent__(X1):--has_parent(X1).
dom_event_base_(X1,X2):-dom_event_base(X1,X2).
dom_event_base__(X1,X2):--dom_event_base(X1,X2).
dom_content_(X1,X2,X3):-dom_content(X1,X2,X3).
dom_content__(X1,X2,X3):--dom_content(X1,X2,X3).
defined_object_(X1):-defined_object(X1).
defined_object__(X1):--defined_object(X1).
blocked_with_(X1,X2,X3):-blocked_with(X1,X2,X3).
blocked_with__(X1,X2,X3):--blocked_with(X1,X2,X3).
dom_is_blocked_(X1,X2):-dom_is_blocked(X1,X2).
dom_is_blocked__(X1,X2):--dom_is_blocked(X1,X2).
dom_is_closed_(X1,X2):-dom_is_closed(X1,X2).
dom_is_closed__(X1,X2):--dom_is_closed(X1,X2).
is_blocked_(X1,X2):-is_blocked(X1,X2).
is_blocked__(X1,X2):--is_blocked(X1,X2).
event_base_(X1,X2):-event_base(X1,X2).
event_base__(X1,X2):--event_base(X1,X2).
dom_actions_vn_result_(X1,X2):-dom_actions_vn_result(X1,X2).
dom_actions_vn_result__(X1,X2):--dom_actions_vn_result(X1,X2).
dom_has_parent_(X1):-dom_has_parent(X1).
dom_has_parent__(X1):--dom_has_parent(X1).
dom_is_contained_(X1,X2):-dom_is_contained(X1,X2).
dom_is_contained__(X1,X2):--dom_is_contained(X1,X2).
actions_vn_destination_(X1,X2):-actions_vn_destination(X1,X2).
actions_vn_destination__(X1,X2):--actions_vn_destination(X1,X2).
% event_path_ event_path__ dom_is_restrained_ dom_is_restrained__ is_near_ is_near__ defined_path_ defined_path__ defined_raw_material_ defined_raw_material__ is_under_ is_under__ event_raw_material_ event_raw_material__ observed_ observed__ is_outside_ is_outside__ dom_confined_to_ dom_confined_to__ dom_is_in_front_of_ dom_is_in_front_of__ dom_actions_vn_instrument_ dom_actions_vn_instrument__ dom_is_accessible_ dom_is_accessible__ has_part_ has_part__ dom_occurs_ dom_occurs__ event_toward_ event_toward__ is_above_ is_above__ dom_actions_vn_source_ dom_actions_vn_source__ shut_out_of_ shut_out_of__ defined_donor_ defined_donor__ dom_is_over_ dom_is_over__ defined_result_ defined_result__ dom_known_to_ dom_known_to__ dom_actions_vn_cause_ dom_actions_vn_cause__ dom_actions_vn_value_ dom_actions_vn_value__ dom_defined_toward_ dom_defined_toward__ dom_actions_vn_product_ dom_actions_vn_product__ defined_recipient_ defined_recipient__ dom_sink_ dom_sink__ dom_is_opposite_ dom_is_opposite__ actions_vn_copatient_ actions_vn_copatient__ dom_actions_vn_cotheme_ dom_actions_vn_cotheme__ dom_event_instrument_ dom_event_instrument__ event_origin_ event_origin__ dom_actions_vn_theme_ dom_actions_vn_theme__ dom_defined_site_ dom_defined_site__ defined_instrument_ defined_instrument__ dom_defined_origin_ dom_defined_origin__ actions_vn_experiencer_ actions_vn_experiencer__ actions_vn_source_ actions_vn_source__ dom_event_path_ dom_event_path__ actions_vn_recipient_ actions_vn_recipient__ actions_vn_initial_location_ actions_vn_initial_location__ dom_is_a_ dom_is_a__ actions_vn_beneficiary_ actions_vn_beneficiary__ dom_defined_experiencer_ dom_defined_experiencer__ dom_defined_recipient_ dom_defined_recipient__ dom_is_between_ dom_is_between__ is_beside_ is_beside__ dom_actions_vn_initial_location_ dom_actions_vn_initial_location__ dom_defined_beneficiary_ dom_defined_beneficiary__ dom_actions_vn_predicate_ dom_actions_vn_predicate__ dom_is_beside_ dom_is_beside__ dom_subsort_ dom_subsort__ dom_actions_vn_attribute_ dom_actions_vn_attribute__ dom_defined_away_from_ dom_defined_away_from__ defined_experiencer_ defined_experiencer__ abuts_ abuts__ actions_vn_product_ actions_vn_product__ has_child_ has_child__ dom_actions_vn_destination_ dom_actions_vn_destination__ defined_beneficiary_ defined_beneficiary__ dom_is_known_ dom_is_known__ is_confined_ is_confined__ actions_vn_instrument_ actions_vn_instrument__ dom_contained_in_ dom_contained_in__ dom_source_ dom_source__ dom_is_below_ dom_is_below__ is_accessible_ is_accessible__ source_ source__ defined_destination_ defined_destination__ dom_is_confined_ dom_is_confined__ dom_event_donor_ dom_event_donor__ actions_vn_result_ actions_vn_result__ is_at_ is_at__ dom_location_ dom_location__ dom_actions_vn_initial_state_ dom_actions_vn_initial_state__ dom_event_raw_material_ dom_event_raw_material__ is_closed_ is_closed__ is_opposite_ is_opposite__ dom_accessible_to_ dom_accessible_to__ defined_origin_ defined_origin__ actions_vn_cause_ actions_vn_cause__ is_below_ is_below__ dom_defined_donor_ dom_defined_donor__ defined_away_from_ defined_away_from__ actions_vn_agent_ actions_vn_agent__ sink_ sink__ actions_vn_stimulus_ actions_vn_stimulus__ actions_vn_value_ actions_vn_value__ dom_is_on_ dom_is_on__ dom_actions_vn_location_ dom_actions_vn_location__ dom_actions_vn_actor_ dom_actions_vn_actor__ dom_actions_vn_material_ dom_actions_vn_material__ dom_instance_ dom_instance__ is_a_ is_a__ encloses_ encloses__ dom_event_agent_ dom_event_agent__ known_to_ known_to__ dom_is_along_ dom_is_along__ is_contained_ is_contained__ actions_vn_pivot_ actions_vn_pivot__ actions_vn_asset_ actions_vn_asset__ content_ content__ actions_vn_cotheme_ actions_vn_cotheme__ dom_encloses_ dom_encloses__ is_over_ is_over__ actions_vn_patient_ actions_vn_patient__ accessible_to_ accessible_to__ dom_is_touching_ dom_is_touching__ dom_is_outside_ dom_is_outside__ dom_is_near_ dom_is_near__ dom_actions_vn_copatient_ dom_actions_vn_copatient__ dom_defined_object_ dom_defined_object__ dom_actions_vn_reflexive_ dom_actions_vn_reflexive__ dom_defined_result_ dom_defined_result__ dom_event_destination_ dom_event_destination__ dom_defined_base_ dom_defined_base__ dom_event_object_ dom_event_object__ is_on_ is_on__ actions_vn_coagent_ actions_vn_coagent__ dom_event_result_ dom_event_result__ event_agent_ event_agent__ is_touching_ is_touching__ dom_actions_vn_recipient_ dom_actions_vn_recipient__ dom_actions_vn_topic_ dom_actions_vn_topic__ actions_vn_theme_ actions_vn_theme__ location_ location__ actions_vn_extent_ actions_vn_extent__ dom_actions_vn_time_ dom_actions_vn_time__ dom_is_above_ dom_is_above__ occurs_ occurs__ is_known_ is_known__ dom_actions_vn_beneficiary_ dom_actions_vn_beneficiary__ dom_blocked_with_ dom_blocked_with__ defined_agent_ defined_agent__ dom_actions_vn_experiencer_ dom_actions_vn_experiencer__ dom_is_inside_ dom_is_inside__ dom_defined_raw_material_ dom_defined_raw_material__ dom_is_under_ dom_is_under__ event_recipient_ event_recipient__ actions_vn_predicate_ actions_vn_predicate__ defined_site_ defined_site__ dom_actions_vn_pivot_ dom_actions_vn_pivot__ actions_vn_attribute_ actions_vn_attribute__ dom_shut_out_of_ dom_shut_out_of__ dom_possesses_ dom_possesses__ dom_event_origin_ dom_event_origin__ dom_actions_vn_causer_ dom_actions_vn_causer__ confined_to_ confined_to__ is_held_ is_held__ dom_held_by_ dom_held_by__ dom_is_behind_ dom_is_behind__ dom_event_site_ dom_event_site__ actions_vn_causer_ actions_vn_causer__ is_behind_ is_behind__ dom_event_away_from_ dom_event_away_from__ defined_toward_ defined_toward__ dom_has_part_ dom_has_part__ dom_is_at_ dom_is_at__ dom_event_toward_ dom_event_toward__ dom_event_beneficiary_ dom_event_beneficiary__ dom_actions_vn_goal_ dom_actions_vn_goal__ dom_has_child_ dom_has_child__ actions_vn_trajectory_ actions_vn_trajectory__ is_along_ is_along__ event_site_ event_site__ event_experiencer_ event_experiencer__ dom_event_recipient_ dom_event_recipient__ happened_ happened__ subsort_ subsort__ is_between_ is_between__ event_beneficiary_ event_beneficiary__ dom_actions_vn_trajectory_ dom_actions_vn_trajectory__ event_donor_ event_donor__ instance_ instance__ event_away_from_ event_away_from__ dom_defined_destination_ dom_defined_destination__ dom_event_experiencer_ dom_event_experiencer__ actions_vn_goal_ actions_vn_goal__ is_restrained_ is_restrained__ dom_actions_vn_patient_ dom_actions_vn_patient__ actions_vn_topic_ actions_vn_topic__ is_in_front_of_ is_in_front_of__ dom_actions_vn_coagent_ dom_actions_vn_coagent__ dom_actions_vn_asset_ dom_actions_vn_asset__ actions_vn_initial_state_ actions_vn_initial_state__ held_by_ held_by__ actions_vn_material_ actions_vn_material__ is_inside_ is_inside__ event_instrument_ event_instrument__ actions_vn_reflexive_ actions_vn_reflexive__ dom_abuts_ dom_abuts__ actions_vn_location_ actions_vn_location__ dom_defined_path_ dom_defined_path__ possesses_ possesses__ dom_actions_vn_agent_ dom_actions_vn_agent__ dom_defined_agent_ dom_defined_agent__ dom_defined_instrument_ dom_defined_instrument__ event_destination_ event_destination__ link_ link__ event_result_ event_result__ defined_base_ defined_base__ contained_in_ contained_in__ actions_vn_actor_ actions_vn_actor__ dom_is_held_ dom_is_held__ actions_vn_time_ actions_vn_time__ event_object_ event_object__ dom_actions_vn_extent_ dom_actions_vn_extent__ dom_link_ dom_link__ dom_actions_vn_stimulus_ dom_actions_vn_stimulus__ has_parent_ has_parent__ dom_event_base_ dom_event_base__ dom_content_ dom_content__ defined_object_ defined_object__ blocked_with_ blocked_with__ dom_is_blocked_ dom_is_blocked__ dom_is_closed_ dom_is_closed__ is_blocked_ is_blocked__ event_base_ event_base__ dom_actions_vn_result_ dom_actions_vn_result__ dom_has_parent_ dom_has_parent__ dom_is_contained_ dom_is_contained__ actions_vn_destination_ actions_vn_destination__
