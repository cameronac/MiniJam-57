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

if (argument3) {
	var sprite_speed = 15; // frames per second
	var frames_in_animation = 10; // frames

	// Computes the number of frames when the slime is moving
	var frames_until_hit = sprite_speed * argument2;
	var number_full_loops = floor((frames_until_hit - (frames_in_animation/2)) / (frames_in_animation * 2));
	var excess_beginning_frames = (frames_until_hit - (frames_in_animation/2)) mod (frames_in_animation * 2);

	var moving_frames = frames_in_animation * number_full_loops + frames_in_animation/2;
	var idle_frames = frames_in_animation * number_full_loops;
	if (excess_beginning_frames > 10) {
		idle_frames += 10;
		moving_frames += (excess_beginning_frames - 10);
	} else {
		idle_frames += excess_beginning_frames;
	}

	// Computes the distance travelled over the time that the slime moves
	var slime_speed_pxl_per_sec = argument1 * room_speed; // pxl per second
	dist_from_player = moving_frames * slime_speed_pxl_per_sec / sprite_speed; // pxl
} else {	
	dist_from_player = room_speed*argument1*argument2; // pxl
}

if (argument0) {
	return width_room/2 - dist_from_player - width_sprite/2;
}
return width_room/2 + dist_from_player - width_sprite/2;