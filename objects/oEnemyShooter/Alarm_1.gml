/// @description Shoot
show_debug_message("SHOOT");

with(instance_create_layer(x, y, "Instances", oBulletEnemy))
{
	speed = 15;
	direction = point_direction(x, y, Player.x, Player.y);
	direction += random_range(-4,4);
	image_angle = direction;
	creator = other.id;
}

state_change("check");