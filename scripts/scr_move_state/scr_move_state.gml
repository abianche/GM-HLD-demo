/// @function scr_move_state()
/// @description Moves and processes pixel perfect collisions

// get input
hspd = InputManager.horizontalInput * maxRunSpeed; // Input will be -1, 0, or 1. Multiply by speed :D
vspd = InputManager.verticalInput	* maxRunSpeed;

if(InputManager.dashInput && canDash)
{
	state = scr_dash_state;
	alarm[0] = dash_timeout;
}

if(InputManager.attackInput)
{
	last_sprite_index = sprite_index;
	image_index = 0;
	state = scr_attack_state;
}

scr_process_collision(hspd, vspd, tilemap);

// Set sprite
if(hspd > 0)
	sprite_index = spr_player_right;
if(hspd < 0)
	sprite_index = spr_player_left;
if(vspd < 0)
	sprite_index = spr_player_up;
if(vspd > 0)
	sprite_index = spr_player_down;