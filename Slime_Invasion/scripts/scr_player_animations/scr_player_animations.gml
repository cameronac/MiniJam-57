/*
	Player Animations:
		-Stand/Idle
		-Crouch
		-Jump
		-Slam
		

	Variables Used:
		-p_jumping, p_iscrouching, p_slam
	
	Description:
		Changes the players image and collision box to fit the action. 

*/


//Crouch Animation
if (p_iscrouching == true) {
	sprite_index = spr_player_crouch;	
} else if (sprite_index == spr_player_crouch) {
	sprite_index = spr_player_stand;
}




