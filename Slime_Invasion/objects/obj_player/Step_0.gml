/// @description Players State


//Is the Game Paused?
if global.pause == false {
	
	//Scripts
	scr_player_input();
	scr_player_movement();
	scr_player_animations();
}


//Player Death 
if (global.p_health <= 0 and p_death_timer_set == false) {
	scr_player_death();
	global.pause = true;
}