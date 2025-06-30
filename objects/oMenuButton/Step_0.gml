Menu_inputs()

if hover = true 
{
	global.ButtonSelected = ButtonID; 
}
if ButtonID = global.ButtonSelected 
	{
		image_index = 1; 
		image_xscale = XScale *1.15; 
		image_yscale = YScale *1.15; 
		if left_click and hover = true or accept 
		{
			ButtonPress()
		}
	}
	else 
	{
		image_index = 0; 
		image_xscale = XScale; 
		image_yscale = YScale; 
	}