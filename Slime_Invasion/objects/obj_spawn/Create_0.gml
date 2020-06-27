/// @description Spawns the slimes at the specified time (in seconds)
/*
	enemy_spawn_order
		ds_list of enemies to be spawned in the level
		each item in the ds_list is a ds_map
			"going_right" is a boolean, true = going right, false = going left
			"hit_time" is the second count until the middle of the slime hits the middle of the screen
*/

// This is an example of how the enemy_spawn_order list will be structured
var slimes = ds_list_create();

var slime1 = ds_map_create();
ds_map_add(slime1, "going_right", true);
ds_map_add(slime1, "hit_time", 3);
ds_map_add(slime1, "slime_speed", 1.5);
ds_map_add(slime1, "color", "red");
ds_list_add(slimes, slime1);

var slime2 = ds_map_create();
ds_map_add(slime2, "going_right", false);
ds_map_add(slime2, "hit_time", 5);
ds_map_add(slime2, "slime_speed", 1.5);
ds_map_add(slime2, "color", "red");
ds_list_add(slimes, slime2);

var slime3 = ds_map_create();
ds_map_add(slime3, "going_right", false);
ds_map_add(slime3, "hit_time", 7);
ds_map_add(slime3, "slime_speed", 2);
ds_map_add(slime3, "color", "blue");
ds_list_add(slimes, slime3);

var slime4 = ds_map_create();
ds_map_add(slime4, "going_right", true);
ds_map_add(slime4, "hit_time", 9);
ds_map_add(slime4, "slime_speed", 2);
ds_map_add(slime4, "color", "blue");
ds_list_add(slimes, slime4);



for (i = 0; i < ds_list_size(slimes); i++) {
	var slime = ds_list_find_value(slimes, i);
	
	// Gets the correct color object
	var slime_obj = slime_red;
	if (ds_map_find_value(slime, "color") == "blue") {
		slime_obj = slime_blue;
	}
	var slime_dist = scr_enemy_starting_pos(
			ds_map_find_value(slime, "going_right"), 
			ds_map_find_value(slime, "slime_speed"),
			ds_map_find_value(slime, "hit_time"));
	
	var created_slime = instance_create_depth(slime_dist, 50, 0, slime_obj);
	
	with(created_slime) {
		// Sets the speed and direction of the slime
		if (ds_map_find_value(slime, "going_right")) {
			hspeed = ds_map_find_value(slime, "slime_speed");
		} else {
			hspeed = -1*ds_map_find_value(slime, "slime_speed");
		}
		
		// Sets the jumping slimes to reach the apex of the jump at the player position
		if (ds_map_find_value(slime, "color") == "blue") {
			image_index = scr_enemy_jump_start_index(ds_map_find_value(slime, "hit_time"));
		}
	}
}