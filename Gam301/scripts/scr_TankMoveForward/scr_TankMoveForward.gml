function scr_TankMoveForward(){	
	with o_PlayerTank
	{
		//check for wall 50 pixels in front	
		if !collision_point(x + lengthdir_x(50, direction + 90),y + lengthdir_y(50, direction + 90),o_StageBox,true,false)
		{
			//actually make the move now we know its safe
			x += lengthdir_x(50, direction + 90)
			y += lengthdir_y(50, direction + 90)
			audio_play_sound(mus_Move,1,false)
		}
		else
		{
			//make wall hit sound
			audio_play_sound(mus_WallHit,1,false)
		}
	}
}