/// @description Draw Menu Elements

//Setting Up Font, Alignment, and Color
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(f_Menu);
draw_set_colour(c_white)


//Scripts
if (global.menu == menu.main_menu) {
	scr_draw_main_menu();	
} else if (global.menu == menu.level_select) {
	scr_draw_level_select();
}

//Pause Menu
if (global.pause == true) {
	scr_draw_pause_menu();
}