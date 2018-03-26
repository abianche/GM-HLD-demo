/// @function scr_dash_state()
/// @description Dashes

// get input
hspd = InputManager.horizontalInput * (maxRunSpeed * skill_dash_mul); // Input will be -1, 0, or 1. Multiply by speed :D
vspd = InputManager.verticalInput	* (maxRunSpeed * skill_dash_mul);

scr_process_collision(hspd, vspd, tilemap);

// Dash effect
var dash = instance_create_layer(x, y, "Instances", oDashEffect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;

skill_dash_duration--;
if(skill_dash_duration <= 0)
{
	state_change("move");
}