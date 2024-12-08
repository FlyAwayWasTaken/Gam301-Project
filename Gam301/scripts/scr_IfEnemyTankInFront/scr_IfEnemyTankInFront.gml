function scr_IfEnemyTankInFront(){
	//check if a enemy tank is in front of the player - if so do nothing, if not skip forward to the end of the if statement
	//check for tank 50 pixels in front	
	with o_PlayerTank
	{
		if !collision_point(x + lengthdir_x(50, direction + 90),y + lengthdir_y(50, direction + 90),o_EnemyTank,true,false)
		{
			//nothing is there - lets skip to the end of the the if statement.
			//first, lets find where on earth the end of the statement is in the array
			with o_ChainController
			{
				with o_Block
				{
					if BlockColor = $FF007FFF and BlockName = "}"
					{
						o_ChainController.EndID = id
					}
					
				}
				//now we have the id of the end block - step through the array until we get to it then proceed
				var IDfound = true
				while IDfound
				{		
					if EndID = CurrentStackIDs[PlayStackNo]	
					{
						IDfound = false
					}
					else
					{
						PlayStackNo += 1	
					}
				}
			}
		}
	}
}