/// @function scr_enemy_chase_state()
scr_check_for_player_samurai();

// FIXME: code duplication -> scr_enemy_wander_state
var toX = GridSnap(targetx, GlobalConstants.unit);
var toY = GridSnap(targety, GlobalConstants.unit);

if(mp_grid_path(global.grid, path, x, y, toX, toY, true))
{
	path_start(path, 2, path_action_stop, false);
}