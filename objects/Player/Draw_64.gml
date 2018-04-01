/// @description Draw stats

draw_set_font(fnt_Dialog);
draw_set_color(c_black);
draw_text(16, 16, "HP");
draw_text(16, 48, "AM");

draw_healthbar(55, 16, 181, 32, (hp / 100) * 100, c_black, c_red, c_lime, 0, true, true);
for(var i=0; i<ammo; i++)
	draw_sprite(sAmmo, -1, 55 + (i * 18), 48);