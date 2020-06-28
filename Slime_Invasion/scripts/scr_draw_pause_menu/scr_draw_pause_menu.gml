/*
	Pause Menu:
		-Resume
		-Options
		-Quit
*/

//Background
draw_set_alpha(0.4)
draw_rectangle_color(0, 0, global.window_width, global.window_height, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
draw_set_alpha(1)

//Menu Elements

//Pause Menu Main
if (pause_options == false) {
	draw_text(global.window_width * 0.5, global.window_height * 0.2, "Game Paused") //Title
	draw_text(global.window_width * 0.5, global.window_height * 0.4, "Resume"); // Resume
	draw_text(global.window_width * 0.5, global.window_height * 0.5, "Options"); // Options
	draw_text(global.window_width * 0.5, global.window_height * 0.6, "Quit"); // Quit
} else if (pause_options == true) {
	
//Pause Menu Options
	draw_text(global.window_width * 0.5, global.window_height * 0.2, "Options") //Title
	
	if (global.music == true) {
		draw_text(global.window_width * 0.5, global.window_height * 0.4, "Music: On"); // Music
	} else {
		draw_text(global.window_width * 0.5, global.window_height * 0.4, "Music: Off"); // Music
	}
	
	if (global.sound == true) {
		draw_text(global.window_width * 0.5, global.window_height * 0.5, "Sound: On"); // Sound
	} else {
		draw_text(global.window_width * 0.5, global.window_height * 0.5, "Sound: Off"); // Sound
	}
	
	draw_text(global.window_width * 0.5, global.window_height * 0.6, "Back"); // Back

}


//Indicator
if (pause_options == false) {
	switch(pause_menu_selected) {
		case pause_menu.resume:
			draw_text(global.window_width * 0.75, global.window_height * 0.4, "<")
			break;
		case pause_menu.options:
			draw_text(global.window_width * 0.75, global.window_height * 0.5, "<")
			break;
		case pause_menu.quit:
			draw_text(global.window_width * 0.7, global.window_height * 0.6, "<")
			break;
	}
} else if (pause_options == true) {
	switch(pause_options_selected) {
		case pause_menu_options.music:
			draw_text(global.window_width * 0.8, global.window_height * 0.4, "<")
			break;
		case pause_menu_options.sound:
			draw_text(global.window_width * 0.8, global.window_height * 0.5, "<")
			break;
		case pause_menu_options.back:
			draw_text(global.window_width * 0.7, global.window_height * 0.6, "<")
			break;
	}
}
