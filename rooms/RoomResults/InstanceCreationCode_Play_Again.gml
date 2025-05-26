text = "Play" 
ButtonPress = function()
{
	global.gamestate = "PlayingGame"
	room_goto(Room1)
	with oController 
		{
			WorldSpeed = OG_WorldSpeed; 
			global.HazardTimer = global.OG_HazardTimer; 
		}
}