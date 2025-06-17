Menu_inputs()

image_index = ButtonID 
if hover = true 
{
	global.ButtonSelected = ButtonID; 
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
	