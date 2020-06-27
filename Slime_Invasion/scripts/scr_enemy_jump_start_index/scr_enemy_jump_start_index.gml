//@param hit_time
/*
	Description:
		Determines the index position of the sprite animation so that the slime
		is at the highest point at the center of the screen.
*/
var num_frames_away = room_speed*argument0;
return 10 - ((num_frames_away - 5) mod 10);