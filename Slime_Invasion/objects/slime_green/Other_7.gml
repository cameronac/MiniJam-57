/// @description Destroys after death animation

if (sprite_index == slime_green_death) {
	instance_destroy();
} else if (sprite_index == slime_green_jump) {
	hspeed = 0;
	sprite_index = slime_green_idle;
} else if (sprite_index == slime_green_idle) {
	sprite_index = slime_green_jump;
	hspeed = base_speed;
}
