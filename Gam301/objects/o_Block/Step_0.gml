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
		Selected = true
		Hovered = true
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