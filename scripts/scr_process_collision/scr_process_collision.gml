/// @function scr_process_collision
/// @param hspd
/// @param vspd
/// @param tilemap
/// @description Pixel perfect collision.

var hspd = argument0;
var vspd = argument1;
var tilemap = argument2;
var bbox_side;

// Horizontal collision
if(hspd > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if(tilemap_get_at_pixel(tilemap, bbox_side + hspd, bbox_top) != 0 ||
   tilemap_get_at_pixel(tilemap, bbox_side + hspd, bbox_bottom) != 0 )
{
	if(hspd > 0) x = x - (x mod global.unit) + global.unit - 1 - (bbox_right - x);
	else x = x - (x mod global.unit) - (bbox_left - x);
	hspd = 0;
}
x += hspd;

// Vertical collision
if(vspd > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if(tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + vspd) != 0 ||
   tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + vspd) != 0 )
{
	if(vspd > 0) y = y - (y mod global.unit) + global.unit - 1 - (bbox_bottom - y);
	else y = y - (y mod global.unit) - (bbox_top - y);
	vspd = 0;
}
y += vspd;

/*
var collider = oWall;

// horizontal collision
if (place_meeting(x + hspd, y, collider))
{
    while(!place_meeting(x + sign(hspd), y, collider))
    {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;
 
// vertical collision
if (place_meeting(x, y + vspd, collider))
{
    while(!place_meeting(x, y + sign(vspd), collider))
    {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;
*/