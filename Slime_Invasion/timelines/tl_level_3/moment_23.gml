var slime = ds_map_create();
ds_map_add(slime, "going_right", true);
ds_map_add(slime, "hit_time", 24.5);
ds_map_add(slime, "slime_speed", 2);
ds_map_add(slime, "color", "red");
ds_list_add(global.slimes, slime);