key_up = keyboard_check_pressed(vk_up)
			|| keyboard_check(ord("W"));
			
key_down = keyboard_check_pressed(vk_down)
			|| keyboard_check(ord("S"));
			
if(place_meeting(x, y + vert, obj_one_boundary)) {
	
	while(!place_meeting(x, y + vert, obj_one_boundary)) {
		y += sign(vert);	
	}
	
	vert = 0;	
}			