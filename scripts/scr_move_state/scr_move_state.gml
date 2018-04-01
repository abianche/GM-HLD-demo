/// @function scr_move_state()
/// @description Moves and processes pixel perfect collisions

if(InputManager.dashInput && skill_dash_avail)
{
	state_change("dash");
	skill_dash_duration = scr_room_seconds(0.25);
	skill_dash_avail = false;
	alarm[0] = skill_dash_cooldown;
}

if(InputManager.attackInput && skill_atk_avail)
{
	last_sprite_index = sprite_index;
	image_index = 0;
	skill_atk_avail = false;
	skill_atk_attacked = false;
	state_change("attack");
	skill_atk_duration = scr_room_seconds(0.15);
	alarm[1] = skill_atk_cooldown;
}

if(InputManager.fireInput && skill_fire_avail && ammo > 0)
{
	skill_fire_avail = false;
	skill_fire_attacked = false;
	state_change("fire");
	skill_fire_duration = scr_room_seconds(0.10);
	alarm[2] = skill_fire_cooldown;
}

// get input
hspd = InputManager.horizontalInput * maxRunSpeed; // Input will be -1, 0, or 1. Multiply by speed :D
vspd = InputManager.verticalInput	* maxRunSpeed;

// if interacting do not move TODO: not correct
if(InputManager.isInteracting)
{
	hspd = 0;
	vspd = 0;
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