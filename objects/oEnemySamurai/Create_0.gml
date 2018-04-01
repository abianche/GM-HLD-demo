/// @description Path

event_inherited();

hp = 60;
path = path_add();
maxRunSpeed = 4;

targetx = 0;
targety = 0;
sight = 512;

skill_dash_dir = 0;
skill_dash_avail = true;
skill_dash_cooldown = scr_room_seconds(1.25);
skill_dash_duration = scr_room_seconds(0.5);
hit = false;

/** STATE MACHINE */
sm = state_machine_create();
state_add(sm, "check", scr_check_for_player_samurai);
state_add(sm, "dash", scr_enemy_dash_state);
state_add(sm, "wander", scr_enemy_wander_state_samurai);
state_add(sm, "chase", scr_enemy_chase_state_samurai);
state_set(sm, "check");

/** COLLISIONS */
tilemap = layer_tilemap_get_id("Collisions");