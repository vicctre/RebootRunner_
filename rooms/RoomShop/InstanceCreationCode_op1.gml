text = "Lime Alt" 
ButtonPress = function()
{
	global.TotalCoinCount -= Alt_Cost;
	global.ShoppingList[ButtonID].bought = true; 
	array_insert(global.Inventory, global.ShoppingList[ButtonID].index,global.ShoppingList[ButtonID].sprite)
	show_message(global.Inventory)
}
