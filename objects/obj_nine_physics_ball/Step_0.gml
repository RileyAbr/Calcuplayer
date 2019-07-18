if((x + (sprite_width / 2) < 0) 
	|| (x - (sprite_width / 2) > room_width)) {
	global.aiming = true;
	global.create_ball = true;
	instance_destroy();
}
else if(y - (sprite_height / 2) > room_height) {
	global.aiming = true;
	global.create_ball = true;
	instance_destroy();
}
else if(stationary_timer == 0) {
	global.aiming = true;
	global.create_ball = true;
	instance_destroy();	
}

if(place_meeting(x, y + 2, obj_nine_stand)) {
	stationary_timer--;	
}

show_debug_message(stationary_timer);