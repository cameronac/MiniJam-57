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
		p_jumping = true; //Triggers Jump
		p_speed = p_speed_max;	// Jumping At max speed
		alarm[0] = p_jump_time;	//Triggering Timer: Stops Jump When Finished
	}
	
	//Crouch
	if (p_crouch == true and place_meeting(x, y + 1, obj_block)) {
		show_debug_message("Crouch");
	}
	
	//Slam
	if (p_jumping == true and p_slam == true and !place_meeting(x, y + p_slam_height, obj_block)) {
		show_debug_message("Slam");
	}
	
	
	//Special
	if (p_special == true and p_special_amount > 0) {
		show_debug_message("Special");
		p_special_amount -= 1;
	}
	
	
	//Move the Player
	
	//Jumping (Going Up) 
	if (p_jumping == true) {
		scr_player_speed(false);
		
		//Unexpected Behavior happens when p_speed is 0: Player Will Disappear
		if (ceil(p_speed) != 0) {
			move_contact_solid(90, ceil(p_speed)); //Direction Up: 90 Degree's
		}
		
	}
	
	//TODO: Slam 
	
	//Gravity (Fall Down)
	if (!place_meeting(x, y + 1, obj_block) and p_jumping == false) {
		scr_player_speed(true);
		
		//Unexpected Behavior happens when p_speed is 0: Player Will Disappear
		if (ceil(p_speed) != 0) {
			move_contact_solid(270, ceil(p_speed)); //Direction Down: 270 Degree's
		}
		
	}
}



