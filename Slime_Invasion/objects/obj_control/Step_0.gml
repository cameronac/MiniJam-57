///@description Handles Game State: Inputs

//Scripts
scr_global_input();

if (global.menu == menu.main_menu) {
	scr_main_menu();	//Main Menu Script
} else if (global.menu == menu.level_select) {
	scr_level_select();	//Level Select Script
}


//Pause Menu Functionality
if (global.pause == true) {
	scr_pause_menu();
}