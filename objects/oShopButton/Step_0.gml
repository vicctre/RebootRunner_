Menu_inputs()
image_index = ButtonID 
if hover = true 
{
	global.ButtonSelected = ButtonID; 
}
if ButtonID = global.ButtonSelected 
	{
		
		if global.ShoppingList[ButtonID] = false
		{
			if left_click and hover = true or accept 
			{
				global.ShoppingList[ButtonID] = true; 
				global.Wallet -= Price; 
				show_message(global.ShoppingList)
			}
		}
	}
	