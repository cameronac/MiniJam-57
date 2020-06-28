//@param going_right, slime_speed, hit_time, slime_pauses
/*
	Description:
		If going_right is true, then the slime will spawn on the left side of the map.
		Otherwise, the slime will spawn on the right side of the map.
		slime_speed is the speed of the slime
		hit_time specifies when the middle of the slime will hit the center of the map
*/

var width_sprite = 32;
var width_room = 200;

var dist_from_player = 0;
if (argument3 == false) {
	dist_from_player = room_speed*argument1*argument2;
} else {
	// Finds the distance based on the alternating moving/idling animations
	var frames_until_hit = room_speed*argument2;
	
	var number_loops = floor((frames_until_hit - 5)/20);
	var place_in_first_loop = (frames_until_hit - 5) mod 20;

	dist_from_player = 10 * number_loops;
	if (place_in_first_loop > 10) {
		dist_from_player += (place_in_first_loop - 10);
	}
	dist_from_player *= argument1;
}

if (argument0) {
	return width_room/2 - dist_from_player - width_sprite/2;
}
return width_room/2 + dist_from_player - width_sprite/2;


