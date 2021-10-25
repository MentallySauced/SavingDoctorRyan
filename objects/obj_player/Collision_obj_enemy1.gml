/// @description Insert description here
// You can write your code in this editor

if (vspeed >= 0 and obj_player.y < other.y) {
	instance_destroy(other);
	vspeed = -4;
	
} else {
	if(lives == 0) {
		instance_destroy();
	} else {
		lives -= 1;
		speed = -8;
		alarm[0] = 5;
	}
}