/// @description Draw Player HUD

//Special Indicator
var scaling_multiplier = 3;
var sprite_size = sprite_get_width(spr_special_indicator_full);
var indicator = spr_special_indicator_full;	//What Sprite are we drawing


//Draw Special Indicator on Top Left Hand corner of the Screen
for (var i = 0; i < p_special_max; i++) {
	
	if (i < 3 and i == p_special_amount) {
		indicator = spr_special_indicator_empty	
	}
	
	draw_sprite_ext(indicator, 0, ((scaling_multiplier * sprite_size) * i) + sprite_size * i, 0,
	scaling_multiplier, scaling_multiplier, 0, c_white, 1);
}