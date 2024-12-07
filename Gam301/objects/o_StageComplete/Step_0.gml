//check to make sure that all the enemy tanks have been destroyed
if !instance_exists(o_EnemyTank)
{
	//level has been cleared! firstly lets turn off the mouse
	if instance_exists(o_Mouse)
	{
		instance_destroy(o_Mouse)
	}
	//now lets glide into the middle of the stage
	scr_GlideTo(15,683,384)
	//and count down before we go to the next level
	if NextStageCountDown = 0
	{
		//go to next stage
		switch room
		{
			case Room1:
				room = Room2
				break;
		}
	}
	else
	{
		NextStageCountDown -= 1	
	}
}