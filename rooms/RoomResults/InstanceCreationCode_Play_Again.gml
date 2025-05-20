text = "Play" 
ButtonPress = function()
{
	global.gamestate = "PlayingGame"
	room_goto(Room1)
	with oController 
		{
			reset_variables_o_controller()
		}
}