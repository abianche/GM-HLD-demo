/// @description Run current state

if(hp <= 0)
{
	instance_destroy();
}

state_execute(sm);