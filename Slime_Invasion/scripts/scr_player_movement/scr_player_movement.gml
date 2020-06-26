/*
	Player Movement: 
		-Jump
		-Crouch
		-Slam
		-Special


	Variables Used: 
		-p_jump, p_crouch, p_slam, p_special. p_special_amount

	Description:
		Handles all player movement input if the game isn't paused. 
		Checks need to be made before using input. For example:
		are we touching the ground when trying to crouch, etc. 

*/

//Is the Game Paused?
if (global.pause == false) {
	
	//Jump
	if (p_jump == true and place_meeting(x, y + 1, obj_block)) {
		show_debug_message("Jump");
	}

	//Crouch
	if (p_crouch == true and place_meeting(x, y + 1, obj_block)) {
		show_debug_message("Crouch");
	}
	
	//Slam
	if (p_slam == true and !place_meeting(x, y + p_slam_height, obj_block)) {
		show_debug_message("Slam");
	}
	
	
	//Special
	if (p_special == true and p_special_amount > 0) {
		show_debug_message("Special");
		p_special_amount -= 1;
	}
	
	
	
	
	
}



