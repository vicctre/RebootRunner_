
//gonna put the list IDs for every colors and costumes 
function Item(_sprite,_index,_bought) constructor //constructor is a function that helps build structs (list of variables that you can give values to)
{
	sprite = _sprite
	index = _index
	bought = _bought
}
C01 = new Item(global.Alt01,0,false); 
C02 = new Item(global.Alt02,1,false); 
C03 = new Item(global.Alt03,2,false); 
C04 = new Item(global.Alt04,3,false); 
C05 = new Item(global.Alt05,4,false); 
C06 = new Item(global.Alt06,5,false); 
C07 = new Item(global.Alt07,6,false); 
C08 = new Item(global.Alt08,7,false); 
C09 = new Item(global.Alt09,8,false); 
C10 = new Item(global.GS_Sprites,9,false); 
C11 = new Item(global.Mein_Sprites,10,false); 
C12 = new Item(global.FB_Sprites,11,false); 
C13 = new Item(global.MA_Sprites,12,false); 
C14 = new Item(global.Kobold_Sprites,13,false); 
C15 = new Item(global.Luna_Sprites,14,false); 
//C16 = new Item(global.VT_Sprites,16,false); 
//C17 = new Item(global.GS_Sprites,15,false); 

global.ShoppingList = 
[
	C01,
	C02,
	C03,
	C04,
	C05,
	C06,
	C07,
	C08,
	C09,
	C10,
	C11,
	C12,
	C13,
	C14,
	C15,
	//C16,
	//C17,
] 	

global.Inventory = 
[] 
