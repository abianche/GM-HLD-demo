/// @function scr_attack_state()
/// @description Attacks

sprite_index = sPlayerAttack;

if(image_index >= (image_number - 1) && !attacked)
{
	
	// get input
	var h = InputManager.horizontalInput * global.unit/2;
	var v = InputManager.verticalInput * global.unit/2;
	
	
	
	var damageObj = instance_create_layer(x+h, y+v, "Instances", oDamage);
	damageObj.depth = id.depth - 1;
	damageObj.creator = id;
	attacked = true;
}