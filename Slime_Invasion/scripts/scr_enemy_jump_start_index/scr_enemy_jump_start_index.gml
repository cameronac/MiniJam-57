//@param hit_time, slime_pauses
/*
	Description:
		Determines the index position of the sprite animation so that the slime
		is at the highest point at the center of the screen.
*/
var frames_in_loop = 0;
var frames_in_animation = 10;
var sprite_speed = 15;

if (argument1) {
	// If the slime pauses, then one loop is the move animation and the idle animation
	frames_in_loop = 2*frames_in_animation;
} else {
	// If the slime only moves, then one loop is just the move animation
	frames_in_loop = frames_in_animation;
}

// Sprite speed in frames per second, hit_time in seconds
var frames_until_hit = sprite_speed * argument0;


return (frames_in_loop - 1) - ((frames_until_hit - (frames_in_animation/2)) mod frames_in_loop);
