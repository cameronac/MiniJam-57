/// @description Collides with player object
hspeed = 0;
sprite_index = slime_yellow_death;

//Hit Player only take 1 health
if (collided == false) {
	global.p_health -= 1
	collided = true
}

