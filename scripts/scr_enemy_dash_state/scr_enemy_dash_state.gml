/// @function scr_dash_state()
/// @description Dashes

if(skill_dash_avail)
{
	path_end();

	// get input
	var hspd = lengthdir_x(15, skill_dash_dir);
	var vspd = lengthdir_y(15, skill_dash_dir);

	scr_process_collision(hspd, vspd, tilemap);

	// Dash effect
	var dash = instance_create_layer(x, y, "Instances", oDashEffect);
	dash.sprite_index = sprite_index;
	dash.image_index = image_index;

	skill_dash_duration--;
	if(skill_dash_duration <= 0)
	{
		skill_dash_avail = false;
		alarm[1] = skill_dash_cooldown;
		//state_change("check");
	}
}