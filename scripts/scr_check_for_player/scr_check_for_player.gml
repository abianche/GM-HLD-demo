/// @function scr_check_for_player()
if(instance_exists(Player))
{
	var distance = point_distance(x, y, Player.x, Player.y);
	var dir = point_direction(x, y, Player.x, Player.y);
	var canSee = IsInLineOfSight(x, y, Player.x, Player.y, sight, dir, 90, oWall);
	if(canSee)
	{
		state = scr_enemy_chase_state;
		targetx = Player.x;
		targety = Player.y;
	}
	else
	{
		scr_enemy_choose_next_state();
	}
}
else
{
	scr_enemy_choose_next_state();
}