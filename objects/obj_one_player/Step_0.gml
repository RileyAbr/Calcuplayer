key_up = keyboard_check(vk_up)
			|| keyboard_check(ord("W"));
			
key_down = keyboard_check(vk_down)
			|| keyboard_check(ord("S"));
			
var move = key_down - key_up;		

vert = move * spd;

if(place_meeting(x, y + vert, obj_one_boundary)) {
	
	while(!place_meeting(x, y + vert, obj_one_boundary)) {
		y += sign(vert);	
	}
	
	vert = 0;	
}			

y += vert;