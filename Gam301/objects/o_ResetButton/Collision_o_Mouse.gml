image_index = 1
o_Mouse.image_index = 1

if mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face1) or gamepad_button_check_pressed(0,gp_face2)
{
	audio_play_sound(mus_BlocksReset,1,false)
	room_restart()	
	o_StageComplete.FadeIn = 0
}