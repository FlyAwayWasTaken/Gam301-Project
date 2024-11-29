//work out how long the text will be when written out
var StringLength = string_width(BlockName)
var StringHeight = string_height(BlockName)

//check touched status
//is the mouse touching me? is it being held down? are there any other blocks being held?
if collision_rectangle(x - ((StringLength + 50) / 2),y - ((StringHeight + 20) / 2),x + ((StringLength + 50) / 2),y + ((StringHeight + 20) / 2),o_Mouse,true,false)
{
	//we are touching the mouse
	if mouse_check_button(mb_left)
	{	
		//are any other blocks selected
		//get list of all block ids
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
					SelectedFound = true	
				}
			}
		}
		if SelectedFound = false
		{
			Selected = true
			Hovered = true
		}
	}
	else
	{
		Hovered = true
		Selected = false
	}
}
else
{
	Hovered = false
	Selected = false
}