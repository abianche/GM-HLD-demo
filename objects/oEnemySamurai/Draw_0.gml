/// @description

draw_self();

if(GlobalConstants.debug)
{
	draw_set_color(c_red);
	draw_circle(x, y, sight, true);
	draw_set_color(c_purple);
	draw_circle(x, y, sight/2, true);
}