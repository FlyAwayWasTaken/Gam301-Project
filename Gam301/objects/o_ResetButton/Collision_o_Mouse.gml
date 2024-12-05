image_index = 1

if mouse_check_button_pressed(mb_left)
{
	audio_play_sound(mus_BlocksReset,1,false)
	room_restart()	
}