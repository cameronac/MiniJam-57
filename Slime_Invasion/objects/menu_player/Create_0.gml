/// @description Player Variables


//Movement
p_jump = false;
p_crouch = false;
p_slam = false;
p_iscrouching = false;

//Attributes
p_speed = 0;

//Timer
p_jumping = false;
p_death_timer_set = false;

alarm[1] = room_speed*2; // jump
var slime_dist = scr_enemy_starting_pos(true, 2, 2.2, false) - (100 - x);
var created_slime = instance_create_depth(slime_dist, 102, 0, slime_red);
with(created_slime) {
	hspeed = 2;
}

alarm[3] = room_speed*4; // crouch
var slime_dist = scr_enemy_starting_pos(true, 2, 4.2, false) - (100 - x);
var created_slime = instance_create_depth(slime_dist, 102, 0, slime_blue);
with(created_slime) {
	hspeed = 2;
	image_index = scr_enemy_jump_start_index(4.2, false);
}

alarm[5] = room_speed*6; // jump
var slime_dist = scr_enemy_starting_pos(true, 2, 6.2, false) - (100 - x);
var created_slime = instance_create_depth(slime_dist, 102, 0, slime_red);
with(created_slime) {
	hspeed = 2;
}

alarm[6] = room_speed*7; // jump
var slime_dist = scr_enemy_starting_pos(false, 2, 7.2, false) - (100 - x);
var created_slime = instance_create_depth(slime_dist, 102, 0, slime_red);
with(created_slime) {
	hspeed = -2;
}

alarm[7] = room_speed*8; // crouch
var slime_dist = scr_enemy_starting_pos(false, 2, 8.2, false) - (100 - x);
var created_slime = instance_create_depth(slime_dist, 102, 0, slime_blue);
with(created_slime) {
	hspeed = -2;
	image_index = scr_enemy_jump_start_index(8.2, false);
}