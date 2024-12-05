///@arg glidespeed
///@arg xToGlide
///@arg yToGlide
function scr_GlideTo(argument0, argument1, argument2) {
	var _xglideto = argument1
	var _yglideto = argument2
	var _glidespeed = argument0
	x += (_xglideto - x) / _glidespeed
	y += (_yglideto - y) / _glidespeed
}
