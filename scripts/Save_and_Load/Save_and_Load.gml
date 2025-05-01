
function SaveGame()
{
	ini_open("RebootRunner_Save_Data")
	ini_write_real("Data1", "High Score", global.Hi_Score)
	ini_close()
}

function LoadGame() 
{
	if file_exists("RebootRunner_Save_Data") 
	{
		ini_open("RebootRunner_Save_Data")
		global.Hi_Score = ini_read_real("Data1", "High Score", 0)
		ini_close()
	}
}