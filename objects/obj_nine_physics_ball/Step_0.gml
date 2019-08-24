if(x + (sprite_width / 2) < 0) {
	instance_destroy();
	global.create_ball = true;
	
}
else if(x - (sprite_width / 2) > room_width) {
	instance_destroy();
	global.create_ball = true;
}
else if(y - (sprite_height / 2) > room_height) {
	instance_destroy();
	global.create_ball = true;
	
}
else if(stationary_timer == 0) {
	instance_destroy();	
	global.create_ball = true;
	
}

if(place_meeting(x, y + (sprite_height / 2), obj_nine_platform)) {
	stationary_timer--;	
}