o_Mouse.image_index = 1

if Playing = true
{
	image_index = 3
}
else
{
	image_index = 1
}

if (mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face1) or gamepad_button_check_pressed(0,gp_face2)) and Playing = false
{
	o_PlayerTank.x = o_PlayerTank.xstart
	o_PlayerTank.y = o_PlayerTank.ystart
	o_PlayerTank.direction = o_PlayerTank.DirStart
	o_PlayerTank.image_angle = o_PlayerTank.direction + 90
	//reset tanks
	instance_destroy(o_EnemyTank)
	switch room
	{
		case Room1:
			with instance_create_layer(1226,335,"tanks",o_EnemyTank)
			{
				image_angle = 180
			}
			break;
		case Room2:
			with instance_create_layer(1027,484,"tanks",o_EnemyTank)
			{
				image_angle = 90
			}
			break;  
		case Room3:
			with instance_create_layer(1127,384,"tanks",o_EnemyTank)
			{
				image_angle = 270
			}
			with instance_create_layer(1027,234,"tanks",o_EnemyTank)
			{
				image_angle = 270
			}
			with instance_create_layer(1276,284,"tanks",o_EnemyTank)
			{
				image_angle = 180
			}
			with instance_create_layer(1226,484,"tanks",o_EnemyTank)
			{
				image_angle = 90
			}
			break;
	}
	Playing = true
	audio_play_sound(mus_GameStart,1,false)
	o_ChainController.PlayChain = true
	o_ChainController.RepeatStackSet = false
	o_ChainController.EndID = noone
}