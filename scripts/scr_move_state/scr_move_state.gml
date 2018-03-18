/// @function scr_move_state()
/// @description Moves and processes pixel perfect collisions

// get input
hspd = InputManager.horizontalInput * maxRunSpeed; // Input will be -1, 0, or 1. Multiply by speed :D
vspd = InputManager.verticalInput	* maxRunSpeed;

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

// set sprite
if(InputManager.horizontalInput > 0)
	sprite_index = sPlayerRight;

if(InputManager.horizontalInput < 0)
	sprite_index = sPlayerLeft;

if(InputManager.verticalInput < 0)
	sprite_index = sPlayerUp;

if(InputManager.verticalInput > 0)
	sprite_index = sPlayerDown;