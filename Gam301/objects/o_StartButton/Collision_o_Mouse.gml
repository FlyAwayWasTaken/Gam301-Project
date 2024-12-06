if Playing = true
{
	image_index = 3
}
else
{
	image_index = 1
}

if mouse_check_button_pressed(mb_left) and Playing = false
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
	}
	Playing = true
	audio_play_sound(mus_GameStart,1,false)
	o_ChainController.PlayChain = true
}