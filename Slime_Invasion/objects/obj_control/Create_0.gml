/// @description Game State Variables

//Enumerators
enum menu {
	no_menu = -1, main_menu = 0, level_select = 1
}

enum main_menu {
	play = 0, quit = 1
}

enum level_select {
	one, two, three, four, five, six, seven, eight
}


//Global
global.pause = false
global.menu = menu.main_menu;
global.window_width = 1024;
global.window_height = 768;


//Universal Menu Variables: Includes Input
	
	//Input
	right_key = false;
	left_key = false;
	up_key = false;
	down_key = false;
	enter_key = false;
	

//Main Menu
main_menu_selected = main_menu.play;
menu_names[0] = "Play";
menu_names[1] = "Quit";


//Level Select
level_selection_selected = level_select.one;
level_amount = 8; //# of Levels