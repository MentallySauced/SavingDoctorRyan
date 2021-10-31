/// @description Insert description here
// You can write your code in this editor

	if (!instance_place(x, y+1, obj_collision)) {
		gravity = .5;
	} else {
		gravity = 0;
	}