/// @description Destroys after death animation

if (sprite_index == slime_yellow_death) {
	instance_destroy();
} else if (sprite_index == slime_yellow_move) {
	hspeed = 0;
	sprite_index = slime_yellow_idle;
} else if (sprite_index == slime_yellow_idle) {
	sprite_index = slime_yellow_move;
	hspeed = base_speed;
}
