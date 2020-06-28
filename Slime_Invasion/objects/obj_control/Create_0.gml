/// @description Game State Variables
audio_play_sound(snd_music_1, 1, true);

//Enumerators for Menu's
enum menu {
	no_menu = -1, main_menu = 0, level_select = 1, pause_menu = 2
}

enum main_menu {
	play = 0, quit = 1
}

enum level_select {
	one, two, three, four, five, six, seven, eight, nine
}

enum pause_menu {
	resume, options, quit
}

enum pause_menu_options {
	music, sound, back
}

//Global
global.pause = false
global.menu = menu.main_menu;
global.window_width = 1024;
global.window_height = 768;
global.music = true;
global.sound = true;



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
level_amount = 9; //# of Levels: Includes Back Button

//Pause Menu
pause_menu_selected = pause_menu.resume;
pause_options = false;
pause_options_selected = pause_menu_options.music

