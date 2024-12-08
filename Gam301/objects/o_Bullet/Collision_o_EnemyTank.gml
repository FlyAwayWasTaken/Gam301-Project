other.Destroy = true
instance_destroy()
audio_play_sound(mus_TankDestroy,1,false)
//signal to level controller that an enemy is destroyed!

gamepad_set_vibration(0,1,1)
o_Mouse.VibrationCounter = 5