/// @description Path

event_inherited();

hp = 30;
path = path_add();
maxRunSpeed = 4;

alarm[0] = room_speed * irandom_range(2, 5);
targetx = 0;
targety = 0;
sight = 512;

/** STATE MACHINE */
sm = state_machine_create();
state_add(sm, "check", scr_check_for_player);
state_add(sm, "chase", scr_enemy_chase_state);
state_add(sm, "wander", scr_enemy_wander_state);
state_set(sm, "check");