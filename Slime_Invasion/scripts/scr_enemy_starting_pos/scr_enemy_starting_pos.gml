//@param going_right, hit_time
/*
	Description:
		If going_right is true, then the slime will spawn on the left side of the map.
		Otherwise, the slime will spawn on the right side of the map.
		hit_time specifies when the middle of the slime will hit the center of the map
*/

var dist_from_player = room_speed*argument1;
var width_sprite = 32;
var width_room = 200;

if (argument0) {
	return width_room/2 - dist_from_player - width_sprite/2;
}
return width_room/2 + dist_from_player - width_sprite/2;