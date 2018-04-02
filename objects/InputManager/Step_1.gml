/// @description Poll For Inputs

horizontalInput = keyboard_check(rightKey) - keyboard_check(leftKey);
verticalInput   = keyboard_check(downKey)  - keyboard_check(upKey);

if(!isInteracting)
{
	interactInput = false;
}

if(keyboard_check_pressed(interactKey))
{
	interactKeyCounter = 0;
	show_debug_message("[XXX] PRESSED");
	isInteracting = true;
}
if(keyboard_check(interactKey) && isInteracting)
{
	if(interactKeyCounter++ >= interactKeyDuration)
	{	
		interactInput = true;
		show_debug_message("[XXX] INTERACTED");
		isInteracting = false;
	}
}
if(keyboard_check_released(interactKey))
{
	interactKeyCounter = 0;
	show_debug_message("[XXX] RELEASED");
	// interactInput = false;
	isInteracting = false;
}

attackInput = keyboard_check_pressed(attackKey);
dashInput   = keyboard_check_pressed(dashKey);
fireInput   = keyboard_check_pressed(fireKey);

// TODO: not correct
pointer_xInput = mouse_x;
pointer_yInput = mouse_y;

if(gamepad_is_connected(device_num))
{
	horizontalInput = (gamepad_axis_value(device_num, gm_horizontalAxis) >= deadzone) - 
					  (gamepad_axis_value(device_num, gm_horizontalAxis) <= -deadzone);
	verticalInput   = (gamepad_axis_value(device_num, gm_verticalAxis) >= -deadzone) - 
					  (gamepad_axis_value(device_num, gm_verticalAxis) <= deadzone);
	
	interactInput = gamepad_button_check_released(device_num, gm_interactKey);
	attackInput   = gamepad_button_check_released(device_num, gm_attackKey);
	dashInput     = gamepad_button_check_released(device_num, gm_dashKey);
	fireInput     = gamepad_button_check_released(device_num, gm_fireKey);
	
	// TODO: not correct
	var xaxis = (gamepad_axis_value(device_num, gm_horizontalPointerAxis) >= deadzone) - 
				(gamepad_axis_value(device_num, gm_horizontalPointerAxis) <= -deadzone);
	var yaxis = (gamepad_axis_value(device_num, gm_verticalPointerAxis) >= -deadzone) - 
				(gamepad_axis_value(device_num, gm_verticalPointerAxis) <= deadzone);
					  
	var spd_max = 16; // Maximum cursor speed for the gamepad.

	var cursorx = window_mouse_get_x() + xaxis * spd_max;
	var cursory = window_mouse_get_y() + yaxis * spd_max;
	window_mouse_set( cursorx, cursory);
}