/// @description Spawns the slimes at the specified time (in seconds)
/*
	enemy_spawn_order
		ds_list of enemies to be spawned in the level
		each item in the ds_list is a ds_map
			"going_right" is a boolean, true = going right, false = going left
			"hit_time" is the second count until the middle of the slime hits the middle of the screen
*/

// This is an example of how the enemy_spawn_order list will be structured



//Levels
switch (room) {
	case rm_level_1:
		timeline_index = tl_level_1;
		break;
	case rm_level_2:
		timeline_index = tl_level_2;
		break;
	case rm_level_3:
		timeline_index = tl_level_3;
		break;
	case rm_level_4:
		timeline_index = tl_level_4;
		break;
	case rm_level_5:
		timeline_index = tl_level_5;
		break;
	case rm_level_6:
		timeline_index = tl_level_6;
		break;
	case rm_level_7:
		timeline_index = tl_level_7;
		break;
	case rm_level_8:
		timeline_index = tl_level_8;
		break;
}

timeline_running = true;
timeline_speed = 1;

global.slimes = ds_list_create();
list_previous_size = ds_list_size(global.slimes);
