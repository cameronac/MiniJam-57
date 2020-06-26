/*
	Menu Input:
		-Right key, Left key, Up key, Down key
		-Enter or Z
*/


//Arrow Keys
if (keyboard_check_pressed(vk_right)) { right_key = true } else { right_key = false; } //Right Key
if (keyboard_check_pressed(vk_left)) { left_key = true } else { left_key = false; }	   //Left Key
if (keyboard_check_pressed(vk_up)) { up_key = true } else { up_key = false; }		   //Up Key
if (keyboard_check_pressed(vk_down)) { down_key = true } else { down_key = false; }	   //Down Key

//Enter
if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))) { enter_key = true } else { enter_key = false; } //Enter or Z