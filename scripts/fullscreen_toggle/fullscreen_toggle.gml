// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fullscreen_toggle() 
{

 if window_get_fullscreen() = true  
	{
		window_set_fullscreen(false);
    } 
	else
	{
         window_set_fullscreen(true);
    }
}
