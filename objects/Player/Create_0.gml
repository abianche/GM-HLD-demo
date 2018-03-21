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

sprite_index = sPlayer;
curDialog = noone;

state = scr_move_state;
tilemapCollisions = layer_tilemap_get_id("Collisions");