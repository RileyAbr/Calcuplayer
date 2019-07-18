if((x + (sprite_width / 2) < 0) 
	|| (x - (sprite_width / 2) > room_width)) {
	global.aiming = true;
	global.create_ball = true;
	instance_destroy();
}
