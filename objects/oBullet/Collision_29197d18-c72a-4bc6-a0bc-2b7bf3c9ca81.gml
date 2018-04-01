/// @description Damage

if(other.id != creator)
{
	with(other)
	{
		hp -= other.damage;	
	}
	
	instance_destroy();
}
