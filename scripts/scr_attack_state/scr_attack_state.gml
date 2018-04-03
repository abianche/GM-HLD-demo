/// @function scr_attack_state()
/// @description Attacks

var h = 0;
var v = 0;

var dist = GlobalConstants.unit/1.5;

// TODO:
switch(sprite_index)
{
	case spr_player_right: h = dist;  break;
	case spr_player_left:  h = -dist; break;
	case spr_player_up:    v = -dist; break;
	case spr_player_down:  v = dist;  break;		
}

if(!skill_atk_attacked)
{
	var damageObj = instance_create_layer(x + h, y + v, "Instances", oDamage);
	damageObj.depth = id.depth - 1;
	damageObj.creator = id;
	skill_atk_attacked = true;
}

sprite_index = spr_player_attack;

skill_atk_duration--;
if(skill_atk_duration <= 0)
{
	state_change("move");
}