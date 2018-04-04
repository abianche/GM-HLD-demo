/// @description Deal damage
if(other.id != creator)
{
	other.hp -= damage;
	other.flash = 1;
}