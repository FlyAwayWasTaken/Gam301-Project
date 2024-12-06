if PlayChain = true
{
	if ChainPlayTimer = 0 
	{
		//execute current script, then move to the next in the chain, then reset the timer
		with CurrentStackIDs[PlayStackNo]
		{
			script_execute(BlockScript)	
		}
		//increment counter 
		PlayStackNo += 1
		if PlayStackNo > CurrentStackNo
		{
			//we're done
			PlayChain = false
			with CurrentStackIDs[PlayStackNo]
			{
				Hovered = false 	
			}
			PlayStackNo = 0
			o_StartButton.Playing = false
		}
		//reset timer
		ChainPlayTimer = 40
	}
	else
	{
		ChainPlayTimer -= 1	
		with CurrentStackIDs[PlayStackNo]
		{
			Hovered = true	
		}
		
		with o_Block
		{
			if id != other.CurrentStackIDs[other.PlayStackNo]
			{
				Hovered = false	
			}
		}
	}
}
else
{
	o_Block.Hovered = false	
}