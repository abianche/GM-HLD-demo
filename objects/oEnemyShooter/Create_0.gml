/// @description Path

event_inherited();

hp = 20;
path = path_add();
maxRunSpeed = 4;

targetx = 0;
targety = 0;
sight = 512;

skill_shoot_cooldown = scr_room_seconds(2.25);

/** STATE MACHINE */
sm = state_machine_create();
state_add(sm, "check", scr_check_for_player_shooter);
state_add(sm, "shoot", scr_enemy_shoot_shooter_state);
state_add(sm, "wander", scr_enemy_wander_state_shooter);
state_set(sm, "check");

/** COLLISIONS */
tilemap = layer_tilemap_get_id("Collisions");