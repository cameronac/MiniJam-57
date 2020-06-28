/// @description Insert description here
// You can write your code in this editor

//Pausing Movement
if (global.pause == true) {
	if (set_after_pause == true) {
		image_speed = 0;
		get_speed = hspeed;
		set_after_pause = false;
		hspeed = 0;
	}
} else if (global.pause == false) {
	
	if (set_after_pause == false) {
		hspeed = get_speed;	
		image_speed = 1;
		set_after_pause = true;
	}
	
}