/*
	Level Select State:
		-1, 2, 3, 4, 5, 6, 7, 8
		
	Variables Used: 
		-enter_key, up_key, down_key, left_key, right_key //Input
		-level_selection_selected
*/


//Change Selection
if (up_key) {
	level_selection_selected -= 4;
}

if (down_key) {
	level_selection_selected += 4;
}

if (right_key) {
	level_selection_selected += 1;
}

if (left_key) {
	level_selection_selected -= 1;
}


//Check Bounds
if (level_selection_selected > level_select.eight) {
	level_selection_selected = level_select.one;
}

if (level_selection_selected < level_select.one) {
	level_selection_selected = level_select.eight;
}


//Menu Buttons Pressed
if (enter_key == true) {
	
	//Level Selected
	switch(level_selection_selected) {
		case 0:
			room_goto(rm_level_1);
			break;
		case 1:
			room_goto(rm_level_2);
			break;
		case 2:
			room_goto(rm_level_3);
			break;
		case 3: 
			room_goto(rm_level_4);
			break;
		default:
			break;
	}
	
	global.menu = menu.no_menu
}