//set depth according to if we are being selected or not
if Selected = true
{
	depth = 0
}
else
{
	depth = 100	
}

//work out how long the text will be when written out
draw_set_font(f_ConsoleClassicNeue) //make sure the font is set before calculations
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
var StringLength = string_width(BlockName)
var StringHeight = string_height(BlockName)

//check if we are being hovered
if Hovered = true
{
	draw_set_alpha(0.5)
	draw_rectangle_color(x - ((StringLength + 60) / 2),y - ((StringHeight + 30) / 2),x + ((StringLength + 60) / 2),y + ((StringHeight + 30) / 2),c_yellow,c_yellow,c_yellow,c_yellow,false)	
	draw_set_alpha(1)
}

//check if we are being selected
if Selected = true
{
	x = o_Mouse.x
	y = o_Mouse.y
	
	//make sure we are in the bounding box 
	//left side
	if x < 0 + ((StringLength + 50) / 2)
	{
		x = ((StringLength + 50) / 2)
	}
	//right side
	if x > 944 - ((StringLength + 50) / 2)
	{
		x = 944 - ((StringLength + 50) / 2)
	}
	//up side
	if y < 0 + ((StringHeight + 20) / 2)
	{
		y = ((StringHeight + 20) / 2)
	}
	if y > 768 - ((StringHeight + 20) / 2)
	{
		y = 768 - ((StringHeight + 20) / 2)
	}
	//down side
}

//draw the rectangle
draw_rectangle_color(x - ((StringLength + 50) / 2),y - ((StringHeight + 20) / 2),x + ((StringLength + 50) / 2),y + ((StringHeight + 20) / 2),BlockColor,BlockColor,BlockColor,BlockColor,false)
//draw the outline
draw_rectangle_color(x - ((StringLength + 50) / 2),y - ((StringHeight + 20) / 2),x + ((StringLength + 50) / 2),y + ((StringHeight + 20) / 2),c_black,c_black,c_black,c_black,true)
draw_rectangle_color(x - ((StringLength + 50) / 2) + 1,y - ((StringHeight + 20) / 2) + 1,x + ((StringLength + 50) / 2) - 1,y + ((StringHeight + 20) / 2) - 1,c_black,c_black,c_black,c_black,true)
//draw the connector at the bottom and top (only if we arent connected to anything!)
//bottom
if ConnectedID = noone
{
	draw_rectangle_color(x - ((StringLength + 50) / 2) + 10,y + ((StringHeight + 20) / 2),x - ((StringLength + 50) / 2) + 25,y + ((StringHeight + 20) / 2) + 5,BlockColor,BlockColor,BlockColor,BlockColor,false)
	draw_rectangle_color(x - ((StringLength + 50) / 2) + 10,y + ((StringHeight + 20) / 2),x - ((StringLength + 50) / 2) + 25,y + ((StringHeight + 20) / 2) + 5,c_black,c_black,c_black,c_black,true)
	draw_rectangle_color(x - ((StringLength + 50) / 2) + 11,y + ((StringHeight + 20) / 2) + 1,x - ((StringLength + 50) / 2) + 24,y + ((StringHeight + 20) / 2) + 4,c_black,c_black,c_black,c_black,true)
}

//draw the words
draw_set_color(c_black)
draw_text(x,y,BlockName)
draw_set_color(c_white)
