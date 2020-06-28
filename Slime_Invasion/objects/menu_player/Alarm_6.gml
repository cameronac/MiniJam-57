/// @description Starts jump 3
p_jump = true;
alarm[6] = room_speed*9;
alarm[2] = 2; // turns it off
var slime_dist = scr_enemy_starting_pos(false, 2, 9.2, false) - (100 - x);
var created_slime = instance_create_depth(slime_dist, 102, 0, slime_red);
with(created_slime) {
	hspeed = -2;
}
