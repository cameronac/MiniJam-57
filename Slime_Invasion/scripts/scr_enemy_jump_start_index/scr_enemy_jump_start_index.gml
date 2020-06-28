//@param hit_time, slime_pauses
/*
	Description:
		Determines the index position of the sprite animation so that the slime
		is at the highest point at the center of the screen.
*/
var num_frames_away = room_speed*argument0;

if (argument1 == false) {
	return 10 - ((num_frames_away - 5) mod 10);
}
return 20 - ((num_frames_away - 5) mod 20);