if(y > room_height) {
	global.cans_left--;
	instance_destroy();	
}
else if(x + (sprite_width / 2) > room_width) {
	global.cans_left--;
	instance_destroy();		
}