/// @description Destroys after death animation

if (sprite_index == slime_green_death) {
	instance_destroy();
} else if (sprite_index == slime_multicolor_jump) {
	hspeed = 0;
	sprite_index = slime_multicolor_idle_after_jump;
} else if (sprite_index == slime_multicolor_idle_after_jump) {
	sprite_index = slime_multicolor_move;
	hspeed = base_speed;
} else if (sprite_index == slime_multicolor_move) {
	hspeed = 0;
	sprite_index = slime_multicolor_idle_after_move;
} else if (sprite_index == slime_multicolor_idle_after_move) {
	sprite_index = slime_multicolor_jump;
	hspeed = base_speed;
}
