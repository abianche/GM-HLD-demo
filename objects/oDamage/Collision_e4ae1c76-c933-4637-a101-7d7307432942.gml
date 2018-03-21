/// @description Damage characters
if(other.id != creator)
{
	other.hp -= damage;
	
	var dir = point_direction(creator.x, creator.y, other.x, other.y);
	var xLen = lengthdir_x(knockback, dir);
	var yLen = lengthdir_y(knockback, dir);

	with(other)
	{
		knocked = true;
		x += xLen;
		y += yLen;
	}
}