/// @description Run current state

if(hp <= 0)
{
	instance_destroy();
}
else if(instance_exists(Player))
{
	state_execute(sm);
}