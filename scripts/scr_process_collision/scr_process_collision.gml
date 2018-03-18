/// @function scr_process_collision
/// @description Pixel perfect collision.

var collider = NPC;

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