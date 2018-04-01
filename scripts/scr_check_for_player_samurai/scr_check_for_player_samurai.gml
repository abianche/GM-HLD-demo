/// @function scr_check_for_player()
if(instance_exists(Player))
{
	var distance = point_distance(x, y, Player.x, Player.y);
	var dir = point_direction(x, y, Player.x, Player.y);
	var canDash = IsInLineOfSight(x, y, Player.x, Player.y, sight/2, dir, 90, oWall)  && skill_dash_avail;
	var canSee = IsInLineOfSight(x, y, Player.x, Player.y, sight, dir, 90, oWall);
	if(canDash)
	{
		skill_dash_dir = dir;
		state_change("dash");
	}
	else if(canSee)
	{
		targetx = Player.x;
		targety = Player.y;
		state_change("chase");
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