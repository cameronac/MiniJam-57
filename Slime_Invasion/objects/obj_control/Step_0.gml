///@description Handles Game State: Inputs



//Inputs: F - Fullscreen, ESC - Pause

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