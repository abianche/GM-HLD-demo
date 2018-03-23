/// @function scr_enemy_choose_next_state()

if(alarm[0] <= 0)
{
	path_end();
	state = choose(scr_enemy_wander_state, scr_enemy_idle_state);
	alarm[0] = room_speed * irandom_range(2, 4);
	targetx = irandom_range(x - 128, x + 128);
	targety = irandom_range(y - 128, y + 128);
}

