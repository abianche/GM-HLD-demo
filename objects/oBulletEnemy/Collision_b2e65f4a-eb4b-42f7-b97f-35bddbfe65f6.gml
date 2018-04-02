/// @description Deal damage
with(other)
{
	hp -= other.damage;
	flash = 1;
}

instance_destroy();