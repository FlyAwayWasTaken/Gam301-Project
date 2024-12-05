if Playing = true
{
	image_index = 3
}
else
{
	image_index = 1
}

if mouse_check_button_pressed(mb_left) and Playing = false
{
	Playing = true
	audio_play_sound(mus_GameStart,1,false)
	o_ChainController.PlayChain = true
}