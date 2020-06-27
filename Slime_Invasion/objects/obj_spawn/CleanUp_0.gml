/// @description Destroying DS_Lists, and DS_Maps

//Maps
for (var i = 0; i < ds_list_size(global.slimes); i++) {
	ds_map_destroy(global.slimes[| i]);	
}

//Lists
ds_list_destroy(global.slimes)
