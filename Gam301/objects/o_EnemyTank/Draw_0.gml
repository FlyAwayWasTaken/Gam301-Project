if Destroy = true
{
	if image_alpha > 0
	{
		image_xscale += 0.1
		image_yscale += 0.1
		image_alpha -= 0.1
	}
	else
	{
		instance_destroy()	
	}
}

draw_self()