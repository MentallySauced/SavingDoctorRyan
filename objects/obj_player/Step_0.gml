/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_left) and !instance_place(x-walk_speed, y, obj_collision)) {
		x += -walk_speed;
	
		image_xscale = -1;
	}

if (keyboard_check(vk_right) and !instance_place(x+walk_speed, y, obj_collision)) {
		x += walk_speed;
	
		image_xscale = 1;
}



	// Jumping
if (keyboard_check(vk_up)) {
	if (instance_place(x, y+1, obj_collision)) {
		vspeed = jump_height;
	}
}


if (keyboard_check_pressed(vk_space)){
	instance_create_layer(x, y, "Instances", obj_hitbox);
}

// Gravity
	if (!instance_place(x, y+1, obj_collision)) {
		gravity = .5;
	} else {
		gravity = 0;
	}
	
	// Setting a max value for vspeed
	vspeed = min(vspeed, 15);
	