/// @description Initialize

maxRunSpeed = PlayerStatsManager._maxRunSpeed;
hp = PlayerStatsManager._health;
hspd = 0;
vspd = 0;
dash_mul = 10;
canDash = false;
dash_timeout = scr_GetSeconds(1);
alarm[0] = dash_timeout;

sprite_index = sPlayerRight;
curDialog = noone;

state = scr_move_state;