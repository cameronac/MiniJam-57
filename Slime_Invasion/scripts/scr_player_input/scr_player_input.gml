/*
	Player Controls:
		-Jump: 'Z'
		-Crouch: 'C'
		-Slam: 'X'
		-Special: 'Space' or 'V'
		
	Variables Used: 
		-p_jump, p_crouch, p_slam, p_special: Bool
		
	Description:
		Resets input variables before checking keyboard/mouse input
	
*/


//Reset Variables
p_jump = false;
p_crouch = false;
p_slam = false;
p_special = false;


//Check for Input
if (keyboard_check(ord("Z"))) { p_jump = true; } //Jump
if (keyboard_check(ord("C"))) { p_crouch = true; } else { p_crouch = false } //Crouch
if (keyboard_check_pressed(ord("X"))) { p_slam = true; } //Slam
if (keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("V"))) { p_special = true; } //Special  
