///@param increase_speed?
/*

	Player Speed:
		-Increases
		-Decreases
		
	Description: 
		If argument is true then we increase speed else decrease the speed.
		Check the speed after the speed has been changed
*/

//Increase Speed
if (argument0 == true) {
	
	p_speed += p_speed_increment;
	
//Decrease Speed
} else if (argument0 == false) {
	
	p_speed -= p_speed_increment;
}


//Is Speed out of Bounds: Reset
if (argument0 == true and p_speed > p_speed_max) {
	
	p_speed = p_speed_max;
	
} else if (argument0 == false and p_speed < 0) {
	
	p_speed = 0;	
	
}


