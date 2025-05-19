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
else 
	{
		if room = RoomResults 
		{
			if FinalScore < score + global.CoinCount
			{
				FinalScore += 1; 
			}
			else 
			{
				//Calculating Results after run 
				if global.Hi_Score <= FinalScore 
				{
					global.Hi_Score = FinalScore 
				}
				score = 0; 
				//check for maximum coin count 
				//Increases your global Coin Count after a run  
				if global.TotalCoinCount < Max_Coin
				{
					global.TotalCoinCount += global.CoinCount; 
				}
				if global.TotalCoinCount >= Max_Coin 
				{
					global.TotalCoinCount = Max_Coin; 
				}
				global.CoinCount = 0; 
			}
			draw_text_transformed(22, 62, $"Final Score {FinalScore}", 3, 3, 0)
			
		}
		draw_set_halign(fa_right)//the "h_align" sets text on the horizontal axis, to change the origin of THIS text; default is top left 
		draw_text_transformed(GUI_Width-22,22, $"MONEY:{global.TotalCoinCount}", 3, 3, 0)
		draw_set_halign(fa_left)//you have to reset this in order to prevent all other text from moving to the right
	}
