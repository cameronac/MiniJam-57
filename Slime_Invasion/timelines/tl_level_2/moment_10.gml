var slime = ds_map_create();
ds_map_add(slime, "going_right", false);
ds_map_add(slime, "hit_time", 13);
ds_map_add(slime, "slime_speed", 1.5);
ds_map_add(slime, "color", "blue");
ds_list_add(global.slimes, slime);