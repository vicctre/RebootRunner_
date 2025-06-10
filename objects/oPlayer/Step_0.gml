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
				image_index = 0; 
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
				image_index = 0; 
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
					image_index = 0; 
				}
		}
	break; 
	case "Ded lol": 
		DeathDelay += 1 
		audio_stop_sound(global.RunningMusic[global.CurrentMusic])
		if DeathDelay < 36
		{
			sprite_index = global.SpriteList[global.CurrentSprite].DeadSprite;
			vsp = 0
			grav = 0
			if playSFX = true 
			{
				audio_play_sound(SFX_dead_lol,7,false)
				playSFX = false 
			}		
		}
		else 
		{
			sprite_index = global.SpriteList[global.CurrentSprite].HeadSprite;
			image_angle += 20 //this rotates it every frame 
			if playSFX = false
			{
				audio_play_sound(SFX_death_Explosion,7,false)
				playSFX = true  
			}
			if head_jump = true 
			{
				vspeed = -10
				gravity = 0.4  
				head_jump = false
				//we are using the built in ones cuz they work independently from all our other code
				//if we used "vsp" and "grav" we would still have our collision code (head would just spin on the ground lol) 
			}
		}
		if DeathDelay = 180
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
	audio_play_sound(SFX_jump,7,false)
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


