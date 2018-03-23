/// @function scr_process_collision
/// @param hspd
/// @param vspd
/// @param tilemap
/// @description Pixel perfect collision.

var hspd    = argument0;
var vspd    = argument1;
var tilemap = argument2;

var unit = global.unit; // = 64

var bbox_side;

// Horizontal collision
if(hspd > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
var t1 = tilemap_get_at_pixel(tilemap, bbox_side + hspd, bbox_top);
var t2 = tilemap_get_at_pixel(tilemap, bbox_side + hspd, bbox_bottom);

// is colliding?
if(t1 != 0 || t2 != 0 )
{
	if(hspd > 0) x = x - (x mod unit) + (unit - 1) - (bbox_right - x);
	else x = x - (x mod unit) - (bbox_left - x);
	hspd = 0;
}
x += hspd;

// Vertical collision
if(vspd > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
var t3 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + vspd);
var t4 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + vspd);

// is colliding?
if(t3 != 0 || t4 != 0 )
{
	if(vspd > 0) y = y - (y mod unit) + (unit - 1) - (bbox_bottom - y);
	else y = y - (y mod unit) - (bbox_top - y);
	vspd = 0;
}
y += vspd;