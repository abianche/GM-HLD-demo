/// @description Initialize

maxRunSpeed = PlayerStatsManager._maxRunSpeed;
hp = PlayerStatsManager._health;
hspd = 0;
vspd = 0;
dash_mul = 4;
canDash = true;
dash_timeout = room_speed/4;

sprite_index = sPlayerRight;
curDialog = noone;

state = scr_move_state;