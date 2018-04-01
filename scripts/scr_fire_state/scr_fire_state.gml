/// @function scr_fire_state()
/// @description Fires

var h = 0;
var v = 0;

var dist = GlobalConstants.unit/2;

// TODO:
switch(sprite_index)
{
	case spr_player_right: h = dist;  break;
	case spr_player_left:  h = -dist; break;
	case spr_player_up:    v = -dist; break;
	case spr_player_down:  v = dist;  break;		
}


if(!skill_fire_attacked)
{
	with(instance_create_layer(x + h, y + v, "Instances", oBullet))
	{
		speed = 15;
		direction =  point_direction(x, y, mouse_x, mouse_y);
		direction += random_range(-4,4);
		image_angle = direction;
		damage = 10;
		creator = other.id;
	}

	ammo--;
	skill_fire_attacked = true;
}

sprite_index = spr_player_attack;

skill_fire_duration--;
if(skill_fire_duration <= 0)
{
	state_change("move");
}