/// @description Poll For Inputs

horizontalInput = keyboard_check(rightKey) - keyboard_check(leftKey);
verticalInput   = keyboard_check(downKey)  - keyboard_check(upKey);

interactInput = keyboard_check_pressed(interactKey);
dashInput = keyboard_check_pressed(dashKey);

show_debug_message(gamepad_is_connected(device_num))

if(gamepad_is_connected(device_num))
{
	show_debug_message(gamepad_axis_value(device_num, gm_horizontalAxis));
	horizontalInput = (gamepad_axis_value(device_num, gm_horizontalAxis) >= deadzone) - (gamepad_axis_value(device_num, gm_horizontalAxis) <= -deadzone);
	verticalInput = (gamepad_axis_value(device_num, gm_verticalAxis) >= -deadzone) - (gamepad_axis_value(device_num, gm_verticalAxis) <= deadzone);
	
	interactInput = gamepad_button_check_released(device_num, gm_interactKey);
	dashInput = gamepad_button_check_released(device_num, gm_dashKey);
}