
global.gamestate = "Menu"
global.ButtonSelected = 0; //For navigating menus with Keyboard 
global.Hi_Score = 0
global.CoinCount = 0
global.OG_HazardTimer = 60 //spawn rate from inital start 
global.HazardTimer = global.OG_HazardTimer 
global.CoinChance = 40 
global.Wallet = 100; //0 //Counts all the coins the player gets and spends 
Max_HazardLimit = 100 //longest time to spawn hazards 
Min_HazardTimer = 40 //shortest time to spawn hazards 
RunTime = 0 
OG_WorldSpeed = -3 //how fast the game is upon startup 
WorldSpeed = OG_WorldSpeed
SpeedIncrease = 0
SpeedLimit = 10 //cap on how fast the game can run
GroundPosition = 0; //This is used to move the ground while running (its a Background layer asset) 
ButtonAmount = 0 ;
FinalScore = 0; 
Max_Coin = 9999; 

//Reset All Variatbles when restarting game 
function reset_variables_o_controller() 
		{ 
	        FinalScore = 0;
	        WorldSpeed = OG_WorldSpeed; 
	        global.HazardTimer = global.OG_HazardTimer; 
	    }    

//Macros - used for values that never change 
#macro GUI_Width 1280
#macro GUI_Height 720
#macro Alt_Cost 20 
#macro Costume_Cost 50

//customization for player costumes 
	//these are structs 
	//structs are lists of variables and give them values 
	//arrays are just kinda lists lol (sprites, numbers, etc.)

	
//Costumes for Tezz
global.defaultSprites = 
{
	RunSprite: sTezz_Run,
	JumpSprite: sTezz_Jump,
	SlipSprite: sTezz_Slip, 
	DeadSprite: sTezz_death,
	HeadSprite: sTezz_head, 
	IdleSprite: sTezz_Idle,
}
global.Alt01 = 
{
	RunSprite: Tezz_Alt01_run,
	JumpSprite: Tezz_Alt01_jump,
	SlipSprite: Tezz_Alt01_slip, 
	DeadSprite: Tezz_Alt01_dead,
	HeadSprite: Tezz_Alt01_head, 
	IdleSprite: Tezz_Alt01_idle,
}
global.Alt02 = 
{
	RunSprite: Tezz_Alt02_run,
	JumpSprite: Tezz_Alt02_jump,
	SlipSprite: Tezz_Alt02_slip, 
	DeadSprite: Tezz_Alt02_dead,
	HeadSprite: Tezz_Alt02_head, 
	IdleSprite: Tezz_Alt02_idle,
}
global.Alt03 = 
{
	RunSprite: Tezz_Alt03_run,
	JumpSprite: Tezz_Alt03_jump,
	SlipSprite: Tezz_Alt03_slip, 
	DeadSprite: Tezz_Alt03_dead,
	HeadSprite: Tezz_Alt03_head, 
	IdleSprite: Tezz_Alt03_idle,
}
global.Alt04 = 
{
	RunSprite: Tezz_Alt04_run,
	JumpSprite: Tezz_Alt04_jump,
	SlipSprite: Tezz_Alt04_slip, 
	DeadSprite: Tezz_Alt04_dead,
	HeadSprite: Tezz_Alt04_head, 
	IdleSprite: Tezz_Alt04_idle,
}
global.Alt05 = 
{
	RunSprite: Tezz_Alt05_run,
	JumpSprite: Tezz_Alt05_jump,
	SlipSprite: Tezz_Alt05_slip, 
	DeadSprite: Tezz_Alt05_dead,
	HeadSprite: Tezz_Alt05_head, 
	IdleSprite: Tezz_Alt05_idle,
}
global.Alt06 = 
{
	RunSprite: Tezz_Alt06_run,
	JumpSprite: Tezz_Alt06_jump,
	SlipSprite: Tezz_Alt06_slip, 
	DeadSprite: Tezz_Alt06_dead,
	HeadSprite: Tezz_Alt06_head, 
	IdleSprite: Tezz_Alt06_idle,
}
global.Alt07 = 
{
	RunSprite: Tezz_Alt07_run,
	JumpSprite: Tezz_Alt07_jump,
	SlipSprite: Tezz_Alt07_slip, 
	DeadSprite: Tezz_Alt07_dead,
	HeadSprite: Tezz_Alt07_head, 
	IdleSprite: Tezz_Alt07_idle,
}
global.Alt08 = 
{
	RunSprite: Tezz_Alt08_run,
	JumpSprite: Tezz_Alt08_jump,
	SlipSprite: Tezz_Alt08_slip, 
	DeadSprite: Tezz_Alt08_dead,
	HeadSprite: Tezz_Alt08_head, 
	IdleSprite: Tezz_Alt08_idle,
}
global.Alt09 = 
{
	RunSprite: Tezz_Alt09_run,
	JumpSprite: Tezz_Alt09_jump,
	SlipSprite: Tezz_Alt09_slip, 
	DeadSprite: Tezz_Alt09_dead,
	HeadSprite: Tezz_Alt09_head, 
	IdleSprite: Tezz_Alt09_idle,
}
//Character Costumes
global.GS_Sprites = 
{
	RunSprite: Costume01_run,
	JumpSprite: Costume01_jump, 
	SlipSprite: Costume01_slip,  
	DeadSprite: Costume01_dead, 
	HeadSprite: Costume01_head, 
	IdleSprite: Costume01_idle, 
}
global.Mein_Sprites = 
{
	RunSprite: Costume02_run,
	JumpSprite: Costume02_jump, 
	SlipSprite: Costume02_slip,  
	DeadSprite: Costume02_dead, 
	HeadSprite: Costume02_head, 
	IdleSprite: Costume02_idle,
}
global.FB_Sprites = 
{
	RunSprite: Costume03_run,
	JumpSprite: Costume03_jump, 
	SlipSprite: Costume03_slip,  
	DeadSprite: Costume03_dead, 
	HeadSprite: Costume03_head, 
	IdleSprite: Costume03_idle,
}
global.MA_Sprites = 
{
	RunSprite: Costume04_run,
	JumpSprite: Costume04_jump, 
	SlipSprite: Costume04_slip,  
	DeadSprite: Costume04_dead, 
	HeadSprite: Costume04_head, 
	IdleSprite: Costume04_idle,
}
global.Kobold_Sprites = 
{
	RunSprite: Costume05_run,
	JumpSprite: Costume05_jump,
	SlipSprite: Costume05_slip,  
	DeadSprite: Costume05_dead, 
	HeadSprite: Costume05_head, 
	IdleSprite: Costume05_idle,
}
global.Luna_Sprites = 
{
	RunSprite: Costume06_run,
	JumpSprite: Costume06_jump,
	SlipSprite: Costume06_slip,  
	DeadSprite: Costume06_dead, 
	HeadSprite: Costume06_head, 
	IdleSprite: Costume06_idle,
}
global.VT_Sprites = 
{
	RunSprite: Costume07_run,
	JumpSprite: Costume07_jump,
	SlipSprite: Costume07_slip,  
	DeadSprite: Costume07_dead, 
	HeadSprite: Costume07_head, 
	IdleSprite: Costume07_idle,
}

//sprite array
global.SpriteList = 
[
	global.defaultSprites,
	global.Alt01,
	global.Alt02,
	global.Alt03,
	global.Alt04,
	global.Alt05,
	global.Alt06,
	global.Alt07,
	global.Alt08,
	global.Alt09,
	global.GS_Sprites, 
	global.Mein_Sprites, 
	global.FB_Sprites, 
	global.MA_Sprites, 
	global.Kobold_Sprites, 
	global.Luna_Sprites, 
	global.VT_Sprites, 
]
global.CurrentSprite = 0;  

//This should keep track of the Sprite List array, which will auto update with whatever costumes I add 
//checks how many costumes you have;(if I had 10 costumes) scrolling thru cant go above 10 or below 0  
//you never have to change the -1 btw 
global.SpriteListLenght = array_length(global.SpriteList) -1; 

LoadGame() //always at the end

 

