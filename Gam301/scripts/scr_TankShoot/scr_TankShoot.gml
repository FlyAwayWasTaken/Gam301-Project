function scr_TankShoot(){	
	with o_PlayerTank
	{
		//shoot 
		with instance_create_layer(x,y,"Tanks",o_Bullet)
		{
			direction = other.direction + 90
			image_angle = direction
		}	
		//play sound
		audio_play_sound(mus_TankShoot,1,false)			
	}
}