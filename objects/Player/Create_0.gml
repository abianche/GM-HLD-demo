/// @description Initialize

event_inherited();
maxRunSpeed = PlayerStatsManager._maxRunSpeed;
hp = PlayerStatsManager._health;
hspd = 0;
vspd = 0;
dash_mul = 4;
canDash = true;
dash_timeout = room_speed/4;

attacked = false;

last_sprite_index = noone;
curDialog = noone;

sm = state_machine_create();
state_add(sm, "move", scr_move_state);
state_add(sm, "dash", scr_dash_state);
state_add(sm, "attack", scr_attack_state);
state_set(sm, "move");

tilemap = layer_tilemap_get_id("Collisions");

enum Face { RIGHT, UP, LEFT, DOWN }
face = Face.RIGHT;