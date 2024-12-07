if NextStageCountDown < 100
{
	draw_set_alpha(1 - (NextStageCountDown / 100))
	draw_set_color(c_black)
	draw_rectangle(0,0,1366,768,false)
	draw_set_color(c_white)
	draw_set_alpha(1)
}

if FadeIn > 0
{
	draw_set_alpha(FadeIn / 100)
	draw_set_color(c_black)
	draw_rectangle(0,0,1366,768,false)
	draw_set_color(c_white)
	draw_set_alpha(1)	
	FadeIn -= 1
}


draw_self()