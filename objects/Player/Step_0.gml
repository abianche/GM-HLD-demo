/// @description Player Update

// Example Input using the InputManager
x += InputManager.horizontalInput * maxRunSpeed; // Input will be -1, 0, or 1. Multiply by speed :D
y += InputManager.verticalInput	  * maxRunSpeed;

// Set sprite
if(InputManager.horizontalInput > 0)
	sprite_index = sPlayerRight;

if(InputManager.horizontalInput < 0)
	sprite_index = sPlayerLeft;

if(InputManager.verticalInput < 0)
	sprite_index = sPlayerUp;

if(InputManager.verticalInput > 0)
	sprite_index = sPlayerDown;
