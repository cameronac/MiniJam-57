/// @description Spawning Slimes



//Detecting Change in List Then execute new change
if (ds_list_size(global.slimes) > list_previous_size)
{
	list_previous_size = ds_list_size(global.slimes)	//Update Size
	var i = ds_list_size(global.slimes) - 1;	//Current Slime Index
	var slime = ds_list_find_value(global.slimes, i);
	
	// Gets the correct color object
	var slime_obj = slime_red;
	var slime_pauses = false;
	
	switch(ds_map_find_value(slime, "color")) {
		case "blue":
			slime_obj = slime_blue;
			break;
		
		case "red":
			slime_obj = slime_red;
			break;
			
		case "yellow":
			slime_obj = slime_yellow;
			slime_pauses = true;
			break;
			
		case "green":
			slime_obj = slime_green;
			slime_pauses = true;
			break;
			
		default:
			break;
	}

	var slime_dist = scr_enemy_starting_pos(
			ds_map_find_value(slime, "going_right"), 
			ds_map_find_value(slime, "slime_speed"),
			ds_map_find_value(slime, "hit_time"),
			slime_pauses);
	
	var created_slime = instance_create_depth(slime_dist, 48, 0, slime_obj);
	
	with(created_slime) {
		// Sets the speed and direction of the slime
		if (ds_map_find_value(slime, "going_right")) {
			hspeed = ds_map_find_value(slime, "slime_speed");
		} else {
			hspeed = -1*ds_map_find_value(slime, "slime_speed");
		}
		base_speed = hspeed;
	
		// Sets the jumping slimes to reach the apex of the jump at the player position
		if (ds_map_find_value(slime, "color") == "blue") {
			image_index = scr_enemy_jump_start_index(ds_map_find_value(slime, "hit_time"), slime_pauses);
		} else if (ds_map_find_value(slime, "color") == "yellow") {
			var index_in_loop = scr_enemy_jump_start_index(ds_map_find_value(slime, "hit_time"), slime_pauses);
			if (index_in_loop < 10) {
				sprite_index = slime_yellow_move;
				image_index = index_in_loop;
			} else {
				sprite_index = slime_yellow_idle;
				image_index = index_in_loop - 10;
			}
		} else if (ds_map_find_value(slime, "color") == "green") {
			var index_in_loop = scr_enemy_jump_start_index(ds_map_find_value(slime, "hit_time"), slime_pauses);
			if (index_in_loop < 10) {
				sprite_index = slime_green_jump;
				image_index = index_in_loop;
			} else {
				sprite_index = slime_green_idle;
				image_index = index_in_loop - 10;
			}
		}
	}
}