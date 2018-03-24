/// @function scr_attack_state()
/// @description Attacks



var h = 0;
var v = 0;

var dist = global.unit/2;

// TODO:
switch(sprite_index)
{
	case spr_player_right: h = dist;  break;
	case spr_player_left:  h = -dist; break;
	case spr_player_up:    v = -dist; break;
	case spr_player_down:  v = dist;  break;		
}

if(image_index >= (image_number - 1) && !attacked)
{
	var damageObj = instance_create_layer(x+h, y+v, "Instances", oDamage);
	damageObj.depth = id.depth - 1;
	damageObj.creator = id;
	attacked = true;
}

sprite_index = spr_player_attack;
state_change("move");