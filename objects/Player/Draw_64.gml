/// @description Draw stats

draw_set_font(fnt_Dialog);
draw_set_color(c_black);
draw_text(16, 16, "HP");

draw_healthbar(55, 16, 218, 32, (hp / 100) * 100, c_black, c_red, c_lime, 0, true, true);

draw_text(16, 48, "Move: W A S D");
draw_text(16, 64, "Dash: Space");