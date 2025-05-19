//Game restart
if keyboard_check_pressed(ord("R")) 
{ 
	game_restart()
}

show_debug_message($"{FinalScore} {score}")
 
 
//Game States
switch (global.gamestate) 
{
	
	//Menu state 
	case "Menu": 
	Menu_inputs(); 
	ButtonAmount = instance_number(oMenuButton) -1; //counts how many of said object are in this room (the -1 stops it from going back the last button) 
	if instance_exists(oMenuButton) 
	{
		if down and global.ButtonSelected < ButtonAmount
		{
			global.ButtonSelected += 1; 
		}
		if up and global.ButtonSelected > 0
		{
			global.ButtonSelected -= 1; 
		}
	}
	
	if instance_exists(oPlayer)
	{
		global.gamestate = "PlayingGame" 
		reset_variables_o_controller();
	}
	
	break; 
	
	//Score and Calculating Results 
    case "PlayingGame":
	RunTime += 1
	if RunTime = 60
		{
			score += 1
			RunTime = 1
			SpeedIncrease +=1 
		}
		
	//Hazard Spawn (where you spawn hazards)
	show_debug_message(global.gamestate)
	if oPlayer.state = "Ded lol" //Stops hazards from moving when you die
			{
				SpeedIncrease = 0
				WorldSpeed = 0
				global.OG_HazardTimer = 80
			}
			else if WorldSpeed = 0
			{
				 WorldSpeed = OG_WorldSpeed; 
				 global.HazardTimer = global.OG_HazardTimer; 
			}
	global.HazardTimer -= 1
	if global.HazardTimer <= 0 
	{
		var hazard = instance_create_layer(684,256,"Objects", oHazardParent)
		hazard.sprite_index = choose(sBananav2, sCactus_Tall, sCactus_Small, sRock) 
		
	//Banana Spawn 
		if hazard.sprite_index = sBananav2 
			{
				hazard.CanKill = false
			}
		global.HazardTimer = random_range(global.OG_HazardTimer,global.OG_HazardTimer + Max_HazardLimit)
		
	//Coin Spawn 
	global.CoinChance = random_range(0,100)
		var randomnumber = choose(1,1,2,2,2,3) //putting the same number increases the chance of it happening 
		if hazard.sprite_index = sCactus_Tall 
			{
				randomnumber = choose(2,3) 
			}
		if global.CoinChance <= 40
		{
			var coin = instance_create_layer(choose (684,748,748,620,620), 224 - (randomnumber*32), "Objects", oCoin)
		}
	//Increase Speed of game 
		if SpeedIncrease >= 20 and WorldSpeed < SpeedLimit //How long it takes for game to increase speed 
			{
				WorldSpeed -= 1
				SpeedIncrease = 0
				if global.OG_HazardTimer > Min_HazardTimer
				{
					global.OG_HazardTimer -= 20; //reduces timer everytime the game speeds up 
					Max_HazardLimit -= 10; //increase or decrease gaps between spawns 
					if global.HazardTimer < 40
					{
						global.HazardTimer = 0
					}
				}
			}
	}
		
	//Increasing Hazard Speed all at once 
		if instance_exists(oHazardParent)
			{
				oHazardParent.hspeed = WorldSpeed; 
				 
			}
		if instance_exists(oCoin)
			{
				oCoin.hspeed = WorldSpeed;
			}
	//Increase speed of background as well 
	var lay_id = layer_get_id("Ground");
	GroundPosition += WorldSpeed; 
	layer_x(lay_id, GroundPosition);  
    break;
}

//