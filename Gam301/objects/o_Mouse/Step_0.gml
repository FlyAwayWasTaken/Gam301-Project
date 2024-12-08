if FollowingMouse = true
{
	x = mouse_x
	y = mouse_y
	LastMouseX = mouse_x
	LastMouseY = mouse_y
}
else
{
	if LastMouseX != mouse_x or LastMouseY != mouse_y
	{
		FollowingMouse = true
	}	
}
image_index = 0

//check for controller inputs
if gamepad_button_check(0,gp_padu) or gamepad_axis_value(0,gp_axislv) < -0.2
{
	y -= 10
	FollowingMouse = false
}
if gamepad_button_check(0,gp_padd) or gamepad_axis_value(0,gp_axislv) > 0.2
{
	y += 10
	FollowingMouse = false
}
if gamepad_button_check(0,gp_padl) or gamepad_axis_value(0,gp_axislh) < -0.2
{
	x -= 10
	FollowingMouse = false
}
if gamepad_button_check(0,gp_padr) or gamepad_axis_value(0,gp_axislh) > 0.2
{
	x += 10
	FollowingMouse = false
}

//manage controller vibration
if VibrationCounter > 0
{
	VibrationCounter -= 1	
}
else
{
	gamepad_set_vibration(0,0,0)
}


