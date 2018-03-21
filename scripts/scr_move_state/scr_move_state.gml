/// @function scr_move_state()
/// @description Moves and processes pixel perfect collisions

if(InputManager.dashInput && canDash)
{
	state = scr_dash_state;
	alarm[0] = dash_timeout;
}

if(InputManager.attackInput)
{
	image_index = 0;
	state = scr_attack_state;
}

// get input
hspd = InputManager.horizontalInput * maxRunSpeed; // Input will be -1, 0, or 1. Multiply by speed :D
vspd = InputManager.verticalInput	* maxRunSpeed;

scr_process_collision(hspd, vspd, tilemapCollisions);

sprite_index = sPlayer;