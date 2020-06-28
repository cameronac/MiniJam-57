/// @description Starts crouch 1
p_crouch = true;
alarm[3] = room_speed*9;
alarm[4] = room_speed*0.5; // turns it off
var slime_dist = scr_enemy_starting_pos(true, 2, 9.2, false) - (100 - x);
var created_slime = instance_create_depth(slime_dist, 102, 0, slime_blue);
with(created_slime) {
	hspeed = 2;
	image_index = scr_enemy_jump_start_index(9.2, false);
}