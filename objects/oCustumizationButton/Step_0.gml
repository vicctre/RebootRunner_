Menu_inputs()

image_index = ButtonID 
if hover = true or Column_ID = global.Column and Row_ID = global.Row
{
	//global.Column = Column_ID; 
	//global.Row = Row_ID; 
	image_xscale = 1.5 
	image_yscale = 1.5
}
else 
{
	image_xscale = 1
	image_yscale = 1
}
if Column_ID = global.Column and Row_ID = global.Row
	{
		if global.ShoppingList[ButtonID] = true
		{
			if left_click and hover = true or accept 
			{
				ButtonPress(); 
			}
		}
	}
	
