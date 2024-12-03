//work out how long the text will be when written out
draw_set_font(f_ConsoleClassicNeue) //make sure the font is set before calculations
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
var StringLength = string_width(SpawnBlockName)
var StringHeight = string_height(SpawnBlockName)

if collision_rectangle(x - ((StringLength + 50) / 2),y - ((StringHeight + 20) / 2),x + ((StringLength + 50) / 2),y + ((StringHeight + 20) / 2),o_Mouse,true,false)
{
	draw_set_alpha(0.5)
	draw_rectangle_color(x - ((StringLength + 60) / 2),y - ((StringHeight + 30) / 2),x + ((StringLength + 60) / 2),y + ((StringHeight + 30) / 2),c_yellow,c_yellow,c_yellow,c_yellow,false)	
	draw_set_alpha(1)
	if mouse_check_button_pressed(mb_left)
	{
		//spawn block and attatch it to the latest block?? 	
	}
}

//draw the rectangle
draw_rectangle_color(x - ((StringLength + 50) / 2),y - ((StringHeight + 20) / 2),x + ((StringLength + 50) / 2),y + ((StringHeight + 20) / 2),SpawnBlockColor,SpawnBlockColor,SpawnBlockColor,SpawnBlockColor,false)
//draw the outline
draw_rectangle_color(x - ((StringLength + 50) / 2),y - ((StringHeight + 20) / 2),x + ((StringLength + 50) / 2),y + ((StringHeight + 20) / 2),c_black,c_black,c_black,c_black,true)
draw_rectangle_color(x - ((StringLength + 50) / 2) + 1,y - ((StringHeight + 20) / 2) + 1,x + ((StringLength + 50) / 2) - 1,y + ((StringHeight + 20) / 2) - 1,c_black,c_black,c_black,c_black,true)

//draw the words
draw_set_color(c_black)
draw_text(x,y,SpawnBlockName)
draw_set_color(c_white)

