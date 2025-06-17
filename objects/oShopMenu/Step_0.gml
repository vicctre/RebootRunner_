Menu_inputs()

if hover = true 
{
	global.ButtonSelected = ButtonID; 
}
if ButtonID = global.ButtonSelected 
	{
		image_index = 1; 
		if left_click and hover = true or accept 
		{
			ButtonPress()
		}
	}
	else 
	{
		image_index = 0; 
	}