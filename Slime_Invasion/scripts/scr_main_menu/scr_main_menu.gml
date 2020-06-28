/*
	Main Menu State:
		-Play (0)
		-Quit (1)
		
	Variables Used: 
		-enter_key, up_key, down_key //Input
		-main_menu_selected
*/

//Change Selection
if (up_key) {
	main_menu_selected -= 1;
	audio_play_sound(snd_menu, 0, false);
}

if (down_key) {
	main_menu_selected += 1;
	audio_play_sound(snd_menu, 0, false);
}

//Check Bounds
if (main_menu_selected > main_menu.quit) {
	main_menu_selected = main_menu.play;
}

if (main_menu_selected < main_menu.play) {
	main_menu_selected = main_menu.quit;
}


//Menu Buttons Pressed
if (enter_key == true) {
	
	//Main Menu
	
		//Play
		if (main_menu_selected == main_menu.play) {
			global.menu = menu.level_select;
		}
	
		//Quit
		if (main_menu_selected == main_menu.quit) {
			game_end();
		}
}