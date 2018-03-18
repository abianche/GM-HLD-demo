/// @description Insert description here
// You can write your code in this editor

// Trigger conversation
if(distance_to_object(Player) < 25 && InputManager.interactInput)
{
	var str = "This is a very long string\nAnd this is on second line!";
	curr_txt = scr_Text(str, 1, x - 64, y - 64*2);
}