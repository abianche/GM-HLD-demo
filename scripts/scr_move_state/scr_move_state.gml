/// @function scr_move_state()
/// @description Moves and processes pixel perfect collisions

if(InputManager.dashInput && canDash)
{
	state_change("dash");
	alarm[0] = dash_timeout;
}

if(InputManager.attackInput)
{
	last_sprite_index = sprite_index;
	image_index = 0;
	state_change("attack");
}

// get input
hspd = InputManager.horizontalInput * maxRunSpeed; // Input will be -1, 0, or 1. Multiply by speed :D
vspd = InputManager.verticalInput	* maxRunSpeed;
scr_process_collision(hspd, vspd, tilemap);

if(InputManager.horizontalInput != 0 || InputManager.verticalInput != 0)
{
	dir = point_direction(0, 0, InputManager.horizontalInput, InputManager.verticalInput);
	face = round(dir / 90);
    if(face == 4) face = Face.RIGHT;
}

// Set sprite
switch (face) {
	case Face.RIGHT:
		sprite_index = spr_player_right;
		break;

	case Face.UP:
		sprite_index = spr_player_up;
		break;

	case Face.LEFT:
		sprite_index = spr_player_left;
		break;

	case Face.DOWN:
		sprite_index = spr_player_down;
		break;
	
	default:
		// TODO
		break;
}