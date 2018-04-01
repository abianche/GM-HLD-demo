/// @description Run current state

if(hp <= 0)
{
	instance_destroy();
}

script_execute(state);