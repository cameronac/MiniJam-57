/*
	Level Select State:
		-1, 2, 3, 4, 5, 6, 7, 8
		
	Variables Used: 
		-enter_key, up_key, down_key, left_key, right_key //Input
		-level_selection_selected
*/

//Go back to Main Menu
if (keyboard_check_pressed(vk_escape)) {
	global.menu = menu.main_menu;
}


//Change Selection
if (up_key) {
	level_selection_selected -= 4;
	if (global.sound == true) { audio_play_sound(snd_menu, 0, false); }
}

if (down_key) {
	level_selection_selected += 4;
	if (global.sound == true) { audio_play_sound(snd_menu, 0, false); }
}

if (right_key) {
	level_selection_selected += 1;
	if (global.sound == true) { audio_play_sound(snd_menu, 0, false); }
}

if (left_key) {
	level_selection_selected -= 1;
	if (global.sound == true) { audio_play_sound(snd_menu, 0, false); }
}


//Check Bounds
if (level_selection_selected > level_select.nine) {
	level_selection_selected = level_select.one;
}

if (level_selection_selected < level_select.one) {
	level_selection_selected = level_select.eight;
}


//Menu Buttons Pressed
if (enter_key == true) {
	
	//Level Selected
	switch(level_selection_selected) {
		case level_select.one:
			room_goto(rm_level_1);
			global.menu = menu.no_menu
			break;
			
		case level_select.two:
			room_goto(rm_level_2);
			global.menu = menu.no_menu
			break;
			
		case level_select.three:
			room_goto(rm_level_3);
			global.menu = menu.no_menu
			break;
			
		case level_select.four: 
			room_goto(rm_level_4);
			global.menu = menu.no_menu
			break;
			
		case level_select.five:
			room_goto(rm_level_5);
			global.menu = menu.no_menu
			break;
			
		case level_select.nine:		//Back Button
			global.menu = menu.main_menu;
			level_selection_selected = level_select.one;
			main_menu_selected = main_menu.play;
			break;
			
		default:
			break;
	}
}