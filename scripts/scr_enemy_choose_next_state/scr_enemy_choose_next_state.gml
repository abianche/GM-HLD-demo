/// @function scr_enemy_choose_next_state()

if(alarm[0] <= 0)
{
	path_end();
	state_change(choose("wander", "check"));
	alarm[0] = room_speed * irandom_range(2, 4);
	targetx = irandom_range(x - 128, x + 128);
	targety = irandom_range(y - 128, y + 128);
}

