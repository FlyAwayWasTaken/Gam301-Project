CurrentStackNo = 0
CurrentStackIDs = noone
PlayChain = false
ChainPlayTimer = 40
PlayStackNo = 0

//lets just define a million goddamn slots in this array so it pretty much never breaks
for (var i = 0; i < 100; i++)
{
	CurrentStackIDs[i] = noone	
}

//get start block id and put it into the chain 
CurrentStackIDs[0] = o_Block.id
