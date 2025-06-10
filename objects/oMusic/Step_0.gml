//This plays music 
//
audio_group_set_gain(audiogroup_default,global.gameVolume,0)
if CurrentRoom != room 
{
	CurrentRoom = room 
	audio_stop_all()
	play = true 
}
switch (room) 
{
    case RoomMenu:
	if play = true 
	{
        audio_play_sound(RR_Title, 6, true)
		play = false 
	}
        break;
	case RoomShop: 
	if play = true 
	{
        audio_play_sound(RR_Customize_Shop, 6, true)
		play = false 
	}
		break; 
	case RoomResults: 
	if play = true //after death
	{
        audio_play_sound(RR_results, 6, true)
		play = false 
	}
		break; 
	case Room1: //main stage
	if play = true 
	{
        audio_play_sound(global.RunningMusic[global.CurrentMusic], 6, true)
		play = false 
	}
		break; 
}

//show_debug_message(global.CurrentMusic)
if keyboard_check_pressed(vk_right) and global.CurrentMusic < global.MusicListLenght 
	{
		global.CurrentMusic += 1; 
		play = true; 
		audio_stop_all()
	}
if keyboard_check_pressed(vk_left) and global.CurrentMusic > 0
	{
		global.CurrentMusic -= 1;
		play = true; 
		audio_stop_all()
	}
