/*
	Pause Menu State:
		-Resume, Options, Quit
		-Music, Sound, Back
		
	Variables Used: 
		-pause_selected, pause_options_selected, pause_options
*/



//Change Selection
if (up_key) {
	if (pause_options == false) {
		pause_menu_selected -= 1;
	} else if (pause_options == true) {
		pause_options_selected -= 1;
	}
	if (global.sound == true) { audio_play_sound(snd_menu, 0, false); }
}


if (down_key) {
	if (pause_options == false) {
		pause_menu_selected += 1;
	} else if (pause_options == true) {
		pause_options_selected += 1;
	}
	if (global.sound == true) { audio_play_sound(snd_menu, 0, false); }
}

//Check Bounds
if (pause_menu_selected > pause_menu.quit) {
	pause_menu_selected = pause_menu.resume;
}

if (pause_menu_selected < pause_menu.resume) {
	pause_menu_selected = pause_menu.quit;
}

if (pause_options_selected > pause_menu_options.back) {
	pause_options_selected = pause_menu_options.music;
}

if (pause_options_selected < pause_menu_options.music) {
	pause_options_selected = pause_menu_options.back;
}


//Menu Buttons Pressed
if (enter_key == true) {
	
	//Pause Menu
	if (pause_options == false) {
		//Play
		if (pause_menu_selected == pause_menu.resume) {
			scr_reset_pause_menu();
		}
	
		//Options
		if (pause_menu_selected == pause_menu.options) {
			pause_options = true;
			pause_options_selected = pause_menu_options.music;
		}
	
		//Quit
		if (pause_menu_selected == pause_menu.quit) {
			room_goto(rm_main_menu)
			global.menu = menu.main_menu;
			global.pause = false;
			pause_menu_selected = pause_menu.resume
		}
	} else if (pause_options == true) {
		
		//Music
		if (pause_options_selected == pause_menu_options.music) {
			if (global.music == true) {
				global.music = false;
				audio_stop_all();
			} else {
				global.music = true;
				audio_play_sound(snd_music_1, 1, true);
			}
		}
		
		//Sound
		if (pause_options_selected == pause_menu_options.sound) {
			if (global.sound == true) {
				global.sound = false
			} else {
				global.sound = true;
			}
		}
		
		//Back
		if (pause_options_selected == pause_menu_options.back) {
			pause_options = false;
			pause_options_selected = pause_menu_options.music;
		}
		
	}
}