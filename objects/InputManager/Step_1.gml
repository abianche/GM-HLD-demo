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
}