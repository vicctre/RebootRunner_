play = true;
global.gameVolume = 0.1; //overall volume of the game as of now 
CurrentRoom = RoomMenu //Using this to keep track of which room youre in so you can change music 

//list of songs while running 
global.RunningMusic = 
[
	RR_first_run, 
	MA_Stage_1, 
	MA_Stage_2, 
	MA_Boss, 
	JAM_CM_Stage_1, 
	JAM_CM__Customize_menu_,
	JAM_CM_Battle_Mode, 
	
]
global.CurrentMusic = 0; 
global.MusicListLenght = array_length(global.RunningMusic) -1; 