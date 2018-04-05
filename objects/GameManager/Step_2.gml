/// @description 

if(room == Fight1)
{
	if(instance_number(Enemy) == 0)
	{
		show_debug_message("You WON!");
		room_goto(2);
	}
}