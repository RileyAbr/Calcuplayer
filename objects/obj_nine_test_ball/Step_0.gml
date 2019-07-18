if(x - (sprite_width / 2) > room_width)
{
	room_restart();	
}
else if(x + (sprite_width / 2) < 0) {
	room_restart();	
}

if(y - (sprite_height / 2) > room_height) {
	room_restart();	
}

if(aiming) {
	x = mouse_x;
	y = mouse_y;

	x = clamp(x, 64, 288);
	y = clamp(y, 380, 512);
}

if(!aiming) {
	physics_apply_impulse(x, y, 1400, -2000);	
}