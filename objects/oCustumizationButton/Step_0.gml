Menu_inputs()

image_index = ButtonID 
if hover = true 
{
	global.ButtonSelected = ButtonID; 
	image_xscale = 1.5 
	image_yscale = 1.5
}
else 
{
	image_xscale = 1
	image_yscale = 1
}
if ButtonID = global.ButtonSelected 
	{
		if global.ShoppingList[ButtonID] = true
		{
			if left_click and hover = true or accept 
			{
				global.CurrentSprite = ButtonID; 
			}
		}
	}
	