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