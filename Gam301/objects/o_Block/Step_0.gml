//work out how long the text will be when written out
var StringLength = string_width(BlockName)
var StringHeight = string_height(BlockName)

//check touched status
//is the mouse touching me? is it being held down? are there any other blocks being held?
//if collision_rectangle(x - ((StringLength + 50) / 2),y - ((StringHeight + 20) / 2),x + ((StringLength + 50) / 2),y + ((StringHeight + 20) / 2),o_Mouse,true,false)
//{
//	//we are touching the mouse
//	if mouse_check_button(mb_left)
//	{	
//		//are any other blocks selected
//		//get list of all block ids
//		var SelectedFound = false
//		var Blocks = noone
//		for (var i = 0; i < instance_number(o_Block); i++)
//		{
//			Blocks[i] = instance_find(o_Block,i)
//			//check through them for selected being true (excluding the instance with the same id as this one)
//			if Blocks[i].id != id
//			{
//				if Blocks[i].Selected = true
//				{
//					SelectedFound = true	
//				}
//			}
//		}
//		if SelectedFound = false
//		{
//			Selected = true
//			Hovered = true
//		}
//	}
//	else
//	{
//		Hovered = true
//		Selected = false
//	}
//}
//else
//{
//	Hovered = false
//	Selected = false
//}

//if we have a block connected - ensure thats its positioned beneath us
if ConnectedID != noone
{
	var SetX
	var SetY
	//set X properly
	SetX = x - ((StringLength + 50) / 2)
	with ConnectedID 
	{
		SetX += (string_width(BlockName) + 50) / 2
	}
	//set y properly 
	SetY = y + ((StringHeight + 20) / 2)
	with ConnectedID
	{
		SetY += (string_height(BlockName) + 20) / 2	
	}

	with ConnectedID
	{
		scr_GlideTo(5,SetX,SetY)
	}
}

if ConnectedID = noone
{
	//check collision for selected blocks
	//we need to get the sizing of the current selected block
	var SelectedBlockID = noone
	var SelectedBlockWidth = noone
	var SelectedBlockHeight = noone
	var SelectedFound = false
	var Blocks = noone
	for (var i = 0; i < instance_number(o_Block); i++)
	{
		Blocks[i] = instance_find(o_Block,i)
		//check through them for selected being true (excluding the instance with the same id as this one)
		if Blocks[i].id != id
		{
			if Blocks[i].Selected = true
			{
				SelectedBlockID = Blocks[i]	
			}
		}
	}	
	if SelectedBlockID != noone
	{
		SelectedBlockHeight = string_height(SelectedBlockID.BlockName)  
		SelectedBlockWidth = string_width(SelectedBlockID.BlockName)
	}
	//check for collision between the two rectangles
	if rectangle_in_rectangle(x - ((StringLength + 50) / 2),y - ((StringHeight + 20) / 2),x + ((StringLength + 50) / 2),y + ((StringHeight + 20) / 2),x - ((SelectedBlockWidth + 50) / 2),y - ((SelectedBlockHeight + 20) / 2),x + ((SelectedBlockWidth + 50) / 2),y + ((SelectedBlockHeight + 20) / 2))
	{
		//check for the mouse being released - then add the block to our connected id
		if mouse_check_button_released(mb_left)
		{
			ConnectedID = SelectedBlockID
		}
	}
}

