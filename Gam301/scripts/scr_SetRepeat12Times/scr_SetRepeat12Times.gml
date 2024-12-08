function scr_SetRepeat12Times(){
	with o_ChainController
	{
		if RepeatStackSet = false
		{
			RepeatMarkerStackNo = PlayStackNo
			RepeatStackTimes = 11
			RepeatStackSet = true	
		}
	}
}