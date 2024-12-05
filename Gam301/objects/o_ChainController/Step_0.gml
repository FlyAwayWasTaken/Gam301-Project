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
		//reset timer
		ChainPlayTimer = 20
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