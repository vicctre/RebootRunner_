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
	if play = true 
	{
        audio_play_sound(RR__results, 6, true)
		play = false 
	}
		break; 
	case Room1: 
	if play = true 
	{
        audio_play_sound(RR__first_run, 6, true)
		play = false 
	}
		break; 
}