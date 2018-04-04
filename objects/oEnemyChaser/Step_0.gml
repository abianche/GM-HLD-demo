/// @description Run current state

if(hp <= 0)
{
	instance_destroy();
}
else if(instance_exists(Player) && !alarm[1])
{
	state_execute(sm);
}
else if (alarm[1])
{
	image_xscale = alarm[1] / fps;
	image_yscale = alarm[1] / fps;
}