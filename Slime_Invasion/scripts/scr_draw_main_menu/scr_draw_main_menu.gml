/*
	Draw Main Menu:
		-Title
		-Play
		-Quit
*/


//Window Dimensions
var window_width = window_get_width();
var window_height = window_get_height();

//Title
draw_text(window_width * 0.5, window_height * 0.3, "Slime Invasion")

//Play
draw_text(window_width * 0.5, window_height * 0.6, "Play")

//Quit
draw_text(window_width * 0.5, window_height * 0.7, "Quit")


//Indicator
switch(main_menu_selected) {
	case 0: 
		draw_text(window_width * 0.6, window_height * 0.6, "<")
		break;
	case 1:
		draw_text(window_width * 0.6, window_height * 0.7, "<")
		break;
}