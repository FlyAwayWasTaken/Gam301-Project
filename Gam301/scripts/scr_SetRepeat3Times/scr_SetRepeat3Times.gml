function scr_SetRepeat3Times(){
	with o_ChainController
	{
		if RepeatStackSet = false
		{
			RepeatMarkerStackNo = PlayStackNo
			RepeatStackTimes = 2
			RepeatStackSet = true	
		}
	}
}