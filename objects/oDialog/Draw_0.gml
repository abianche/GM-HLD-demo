/// @description Draw text

// Add letters over time
if(time < text_length)
{
	previoustime = time;
	time += spd;
	print = string_copy(text, 0, time); // TODO: add pre-fix here
	printspace = string_char_at(text, time);
	
	if (floor(time) > floor(previoustime) && printspace != " ")
	{
		audio_play_sound(snd_txtboxes,10,0); 
	}
}
else if(alarm[0] == -1)
{
	alarm[0] = 5 * room_speed;
}

// Render textbox and text
draw_set_alpha(alpha);
if(alpha < 1)
	alpha += spd/10; // fade in based on speed
else
	alpha = 1;
	
draw_set_font(font);
draw_set_color(c_black);
draw_rectangle(x, y, x + boxwidth, y + boxheight, false); // draw box
draw_set_color(c_white);
//draw_rectangle(x, y, x + boxwidth, y + boxheight, true); // draw outline
scr_draw_rectangle_width(x, y, x + boxwidth, y + boxheight, 8);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text_ext
(
	x + padding,
	y + padding,
	print,
	font_size + (font_size/2),
	max_length
);

draw_set_alpha(1);