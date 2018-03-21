/// @function scr_dash_state()
/// @description Dashes

// get input
hspd = InputManager.horizontalInput * (maxRunSpeed * dash_mul); // Input will be -1, 0, or 1. Multiply by speed :D
vspd = InputManager.verticalInput	* (maxRunSpeed * dash_mul);

scr_process_collision(hspd, vspd, tilemapCollisions);

// Dash effect
var dash = instance_create_layer(x, y, "Instances", oDashEffect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;