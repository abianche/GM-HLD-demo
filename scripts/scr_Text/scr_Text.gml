/// @function scr_text("Text", speed, x, y);
/// @description Shows a text box
/// @param text The text.
/// @param drawing_speed Drawing speed.
/// @param xPos The X position.
/// @param yPos The Y position.
/// @return oDialog the create text.

txt = instance_create_layer(argument2, argument3, "Instances", oDialog);

with(txt)
{
	padding    = 16;
	max_length = room_width;
	
	text = argument0;
	spd  = argument1;
	font = fnt_Dialog;
	
	text_length = string_length(text);
	font_size = font_get_size(font);
	
	draw_set_font(font);
	
	text_width = string_width_ext(text, font_size + (font_size/2), max_length);
	text_height = string_height_ext(text, font_size + (font_size/2), max_length);
	
	boxwidth = text_width + (padding*2);
	boxheight = text_height + (padding*2);
}

return txt;