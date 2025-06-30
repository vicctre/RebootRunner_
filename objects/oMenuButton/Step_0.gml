Menu_inputs()

if hover = true 
{
	global.ButtonSelected = ButtonID; 
}
if ButtonID = global.ButtonSelected 
	{
		image_index = 1; 
		image_xscale = 1.5; 
		image_yscale = 1.5; 
		if left_click and hover = true or accept 
		{
			ButtonPress()
		}
	}
	else 
	{
		image_index = 0; 
		image_xscale = 1; 
		image_yscale = 1; 
	}