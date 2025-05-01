//draw_text(x+46, y, instance_number(oBanana))
show_debug_message(global.gamestate)

if global.gamestate != "Menu" 
	{
		draw_text_transformed(22, 22, $"SCORE {score}", 3, 3, 0)
		draw_text_transformed(22, 62, $"COINS {global.CoinCount}", 3, 3, 0)
		draw_text_transformed(24, 112, $"High Score {global.Hi_Score}", 2, 2, 0) 
		//draw_text_transformed(544,64, $"Hazard Spawn {global.OG_HazardTimer}\n Invincible{oPlayer.Debug_Invinicble}", 3, 3, 0 )
		//draw_text_transformed(544,64, $"Hazard Spawn {global.HazardTimer}\n Invincible{oPlayer.Debug_Invinicible}", 3, 3, 0 )
		draw_text_transformed(544,64, $"OG_HazardTimer {global.OG_HazardTimer}\nHazardTimer: {global.HazardTimer}\nRunTime: {RunTime}\nOG_WorldSpeed: {OG_WorldSpeed}\nWorldSpeed: {WorldSpeed}\nInvincible: {oPlayer.Debug_Invinicible}\nSpeedIncrease: {SpeedIncrease} ", 3, 3, 0 )
	}




