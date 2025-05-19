if HasControl = true 
{
	Player_inputs()
}

onground = place_meeting(x,y+1,oWall)

//Costume change 
	//This lets us change our costumes for the time being
	//There are only two atm 
	//gotta add more to the list 

if keyboard_check_pressed(vk_up) and global.CurrentSprite < global.SpriteListLenght 
	{
		global.CurrentSprite += 1; 
	}
if keyboard_check_pressed(vk_down) and global.CurrentSprite > 0
	{
		global.CurrentSprite -= 1; 
	}

//idk how to add other costumes and swap between them

//Invinicbility for Debug purposes 
if keyboard_check_pressed(ord("K"))
	{
		Debug_Invinicible = !Debug_Invinicible
	}

//State machine basically 
switch (state) {
    case "Running":
        sprite_index = global.SpriteList[global.CurrentSprite].RunSprite;
        if not onground { state = "Jump"; }
	//Hazard collisions with player 
		var touchhazard = instance_place(x,y,oHazardParent)
		if touchhazard != noone and Debug_Invinicible = false
		{
			if touchhazard.CanKill = true 
			{
				HasControl = false
				state = "Ded lol" 
			}
		else 
			{
				HasControl = false
				state = "Slip" 
			}
		}
    break;
	case "Jump": 
		sprite_index =  global.SpriteList[global.CurrentSprite].JumpSprite;
			if vsp > 0 
			{ image_index = 1; } 
			else 
			{ image_index = 0; } 
		touchhazard = instance_place(x,y,oHazardParent)
		if touchhazard != noone
		{
			if touchhazard.CanKill = true 
			{
				HasControl = false
				state = "Ded lol" 
			}
		else
			{
				HasControl = false
				state = "Slip" 
			}
		}
		
		if onground { state = "Running"} 
	break; 
	case "Slip": 
		sprite_index =  global.SpriteList[global.CurrentSprite].SlipSprite;
		SlipTime -= 1
		if SlipTime = 0 
			{
				HasControl = true 
				state = "Running" 
				SlipTime = OG_SlipTime
			}
		touchhazard = instance_place(x,y,oHazardParent)
		if touchhazard != noone
		{
			if touchhazard.CanKill = true 
				{
					HasControl = false
					state = "Ded lol" 
				}
		}
	break; 
	case "Ded lol": 
		sprite_index = global.SpriteList[global.CurrentSprite].DeadSprite;
		DeathDelay += 1 
		vsp = 0
		grav = 0
		if DeathDelay = 60 
		{
			SaveGame()
			room_goto(RoomResults); 
			global.gamestate = "Menu"
		}
	break; 
	
		
}
//Jump 

if jump_held //This is for short hops 
{
	vsp = clamp(vsp, JumpHeight, FallSpeed)
}
else 
{
	vsp = clamp(vsp, -5, FallSpeed)
}

if jump and onground = true
{
	//CurrentSprites = MeinSprites; 
	vsp = JumpHeight; 
}

//collision and Gravity 
vsp += grav; 

if place_meeting(x,y+vsp,oWall)
{
	while !place_meeting(x,y+ sign(vsp),oWall)
	{
		y += sign(vsp) //makes you continue moving until youre 1 pixel away from the floor 
	}
	vsp = 0; 
	//CurrentSprites = defaultSprites
}
y += vsp; 


