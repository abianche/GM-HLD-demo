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

state = scr_move_state;

tilemap = layer_tilemap_get_id("Collisions");

sprite_bbox_left   = sprite_get_bbox_left(sprite_index)   - sprite_get_xoffset(sprite_index);
sprite_bbox_right  = sprite_get_bbox_right(sprite_index)  - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top    = sprite_get_bbox_top(sprite_index)    - sprite_get_yoffset(sprite_index);