var slime = ds_map_create();
ds_map_add(slime, "going_right", false);
ds_map_add(slime, "hit_time", 17);
ds_map_add(slime, "slime_speed", 2);
ds_map_add(slime, "color", "yellow");
ds_list_add(global.slimes, slime);
