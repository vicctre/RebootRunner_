if instance_exists(oCustumizationButton)
{
	Menu_inputs()
	if left
	{
		if global.Column > 0 
		{
			global.Column -= 1; 
		}
		else
		{
			global.Column = Column_Amount; //helps us wrap back around to the first object in the row 
		}
	} 
	if right
	{
		if global.Column < Column_Amount 
		{
			global.Column += 1 
		}
		else
		{
			global.Column = 0; 
		}
	}
	if down
	{
		if global.Row < Row_Amount
		{
			global.Row += 1; 
		}
		else
		{
			global.row = 0; 
		}
	}
	if up
	{
			if global.Row > 0
		{
			global.Row -= 1; 
		}
		else
		{
			global.row = Row_Amount; 
		}
	}
}


show_debug_message($"{global.Column}{global.Row}")