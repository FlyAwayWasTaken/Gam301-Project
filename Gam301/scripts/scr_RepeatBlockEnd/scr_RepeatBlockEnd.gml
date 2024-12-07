function scr_RepeatBlockEnd(){
	with o_ChainController
	{
		if RepeatStackTimes > 0
		{
			PlayStackNo = RepeatMarkerStackNo
			RepeatStackTimes -= 1
		}
	}
}