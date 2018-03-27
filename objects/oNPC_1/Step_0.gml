/// @description Insert description here
// You can write your code in this editor

// Trigger conversation
if(distance_to_object(Player) < 25 && InputManager.interactInput && !instance_exists(curDialog))
{
	var str = "Welcome to the first demo!\nGet ready for an epic battle!";
	curDialog = scr_Text(str, 0.5, x - global.unit, y - global.unit * 2);
}