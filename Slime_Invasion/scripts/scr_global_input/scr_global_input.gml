/*
	Global Input:
		-Pausing
		-Fullscreen
		-Restart 
		-Menu Input
*/

//Universal Menu Input
scr_menu_input();

//Pause
if (keyboard_check_pressed(vk_escape)) {
	
	if (global.pause == true) {
		global.pause = false
	} else {
		global.pause = true
	}
	
}


//Fullscreen
if (keyboard_check_pressed(ord("F"))) {
	
	if (window_get_fullscreen()) {
		window_set_fullscreen(false);
	} else {
		window_set_fullscreen(true);
	}
	
}


//Restart Game
if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

