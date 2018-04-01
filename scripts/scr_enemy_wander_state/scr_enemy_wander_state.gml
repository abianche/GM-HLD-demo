/// @function scr_enemy_wander_state()
scr_check_for_player();

// FIXME: code duplication -> scr_enemy_chase_state
var toX = GridSnap(targetx, GlobalConstants.unit);
var toY = GridSnap(targety, GlobalConstants.unit);

if(mp_grid_path(global.grid, path, x, y, toX, toY, true))
{
	path_start(path, 4, path_action_stop, false);
}