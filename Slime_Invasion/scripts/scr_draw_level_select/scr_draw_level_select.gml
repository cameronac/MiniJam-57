/*
	Draw Level Select:
		-Title
		-Play
		-Quit
*/


//Window Dimensions
var window_width = window_get_width();
var window_height = window_get_height();

//Title
draw_text(window_width * 0.2, window_height * 0.1, "Level Select")


//Level Selections

//Level Indicator
draw_text(window_width * 0.2, window_height * 0.3, "1")
draw_text(window_width * 0.4, window_height * 0.3, "2")
draw_text(window_width * 0.6, window_height * 0.3, "3")
draw_text(window_width * 0.8, window_height * 0.3, "4")
//----------------------------------------------------- New Row
draw_text(window_width * 0.2, window_height * 0.45, "5")
draw_text(window_width * 0.4, window_height * 0.45, "6")
draw_text(window_width * 0.6, window_height * 0.45, "7")
draw_text(window_width * 0.8, window_height * 0.45, "8")


//Box Selection indicator
switch(level_selection_selected) {
	case level_select.one:
		draw_rectangle((window_width * 0.2) + 32, (window_height * 0.3) + 32, (window_width * 0.2) - 32, (window_height * 0.3) - 45, true)
		break;
	case level_select.two:
		draw_rectangle((window_width * 0.4) + 32, (window_height * 0.3) + 32, (window_width * 0.4) - 32, (window_height * 0.3) - 45, true)
		break;
	case level_select.three:
		draw_rectangle((window_width * 0.6) + 32, (window_height * 0.3) + 32, (window_width * 0.6) - 32, (window_height * 0.3) - 45, true)
		break;
	case level_select.four:
		draw_rectangle((window_width * 0.8) + 32, (window_height * 0.3) + 32, (window_width * 0.8) - 32, (window_height * 0.3) - 45, true)
		break;
//-------------------------------------------------------- New Row
	case level_select.five:
		draw_rectangle((window_width * 0.2) + 32, (window_height * 0.45) + 32, (window_width * 0.2) - 32, (window_height * 0.45) - 45, true)
		break;
	case level_select.six:
		draw_rectangle((window_width * 0.4) + 32, (window_height * 0.45) + 32, (window_width * 0.4) - 32, (window_height * 0.45) - 45, true)
		break;
	case level_select.seven:
		draw_rectangle((window_width * 0.6) + 32, (window_height * 0.45) + 32, (window_width * 0.6) - 32, (window_height * 0.45) - 45, true)
		break;
	case level_select.eight:
		draw_rectangle((window_width * 0.8) + 32, (window_height * 0.45) + 32, (window_width * 0.8) - 32, (window_height * 0.45) - 45, true)
		break;	
}