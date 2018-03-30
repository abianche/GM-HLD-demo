/// @description Poll For Inputs

horizontalInput = keyboard_check(rightKey) - keyboard_check(leftKey);
verticalInput   = keyboard_check(downKey)  - keyboard_check(upKey);

if(keyboard_check_pressed(interactKey))
{
	interactKeyCounter = 0;
	show_debug_message("PRESSED");
}
if(keyboard_check(interactKey))
{
	interactKeyCounter++;
	show_debug_message("CHECKED");
	show_debug_message(string(interactKeyCounter));
}
if((interactKeyCounter / room_speed) >= interactKeyDuration)
{
	interactInput = true;
	show_debug_message("INTERACTED");
}
if(keyboard_check_released(interactKey))
{
	interactInput = false;
	show_debug_message("RELEASED");
}

attackInput = keyboard_check_pressed(attackKey);
dashInput     = keyboard_check_pressed(dashKey);

if(gamepad_is_connected(device_num))
{
	horizontalInput = (gamepad_axis_value(device_num, gm_horizontalAxis) >= deadzone) - 
					  (gamepad_axis_value(device_num, gm_horizontalAxis) <= -deadzone);
	verticalInput   = (gamepad_axis_value(device_num, gm_verticalAxis) >= -deadzone) - 
					  (gamepad_axis_value(device_num, gm_verticalAxis) <= deadzone);
	
	interactInput = gamepad_button_check_released(device_num, gm_interactKey);
	attackInput = gamepad_button_check_released(device_num, gm_attackKey);
	dashInput     = gamepad_button_check_released(device_num, gm_dashKey);
}