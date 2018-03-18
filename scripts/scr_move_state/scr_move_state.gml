/// @function scr_move_state()
/// @description Moves and processes pixel perfect collisions

if(InputManager.dashInput && canDash)
{
	state = scr_dash_state;
	alarm[0] = dash_timeout;
}

// get input
hspd = InputManager.horizontalInput * maxRunSpeed; // Input will be -1, 0, or 1. Multiply by speed :D
vspd = InputManager.verticalInput	* maxRunSpeed;

scr_process_collision();

// set sprite
if(InputManager.horizontalInput > 0)
	sprite_index = sPlayerRight;

if(InputManager.horizontalInput < 0)
	sprite_index = sPlayerLeft;

if(InputManager.verticalInput < 0)
	sprite_index = sPlayerUp;

if(InputManager.verticalInput > 0)
	sprite_index = sPlayerDown;