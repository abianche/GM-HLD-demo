/// @description Player Update

if(hp <= 0)
{
	instance_destroy();
	game_restart();
}
else state_execute(sm);