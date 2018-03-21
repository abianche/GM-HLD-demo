/// @description Move towards player

if(instance_exists(Player) && !knocked)
{
	var toX = GridSnap(Player.x, global.unit);
	var toY = GridSnap(Player.y, global.unit);

	if(mp_grid_path(global.grid, path, x, y, toX, toY, true))
	{
		path_start(path, 4, path_action_stop, false);
	}
}

if(knocked)
{
	path_start(path, 4, path_action_stop, false);
	knocked = false;
	alarm[0] = 10;
}
else
{
	alarm[0] = 2;
}