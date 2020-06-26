/// @description Spawns the slimes at the specified time (in seconds)
/*
	enemy_spawn_order
		ds_list of enemies to be spawned in the level
		each item in the ds_list is a ds_map
			"going_right" is a boolean, true = going right, false = going left
			"hit_time" is the second count until the middle of the slime hits the middle of the screen
*/


for (i = 0; i < ds_list_size(enemy_spawn_order); i++) {
    show_debug_message("new slime");
	var slime = ds_list_find_value(enemy_spawn_order, i);
	var redslime = instance_create_depth(
		scr_enemy_starting_pos(
			ds_map_find_value(slime, "going_right"), 
			ds_map_find_value(slime, "hit_time")),
		50,
		0,
		slime_red
	);
	with(redslime) {
		if (ds_map_find_value(slime, "going_right")) {
			hspeed = 1;
		} else {
			hspeed = -1;
		}
		
	}
}