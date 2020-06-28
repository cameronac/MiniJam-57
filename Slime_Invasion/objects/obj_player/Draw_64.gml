/// @description Draw Player HUD

//Special Indicator
var scaling_multiplier = 3;
var sprite_size = sprite_get_width(spr_heart_full);
var indicator = spr_heart_full;	//What Sprite are we drawing
var spacing = 8;

//Draw Special Indicator on Top Left Hand corner of the Screen
for (var i = 0; i < p_health_max; i++) {
	
	if (i < 3 and i == global.p_health) or (global.p_health <= 0) {
		indicator = spr_heart_empty;
	}
	
	draw_sprite_ext(indicator, 0, (((scaling_multiplier * sprite_size) * i) + sprite_size * i) + spacing, spacing,
	scaling_multiplier, scaling_multiplier, 0, c_white, 1);
}


//Text on Death
if (global.p_health <= 0) {
	draw_text(global.window_width/2, global.window_height * 0.3, "Game Over")	
}