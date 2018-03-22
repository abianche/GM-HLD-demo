/// @description Back to move state

if(state == scr_attack_state)
{
	sprite_index = last_sprite_index;
	state = scr_move_state;
	attacked = false;
}