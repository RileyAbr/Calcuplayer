key_left = keyboard_check_pressed(vk_left) 
			|| keyboard_check_pressed(ord("A"));
key_right = keyboard_check_pressed(vk_right) 
			|| keyboard_check_pressed(ord("D"));
key_up = keyboard_check_pressed(vk_up)
			|| keyboard_check_pressed(ord("W"));
key_down = keyboard_check_pressed(vk_down)
			|| keyboard_check_pressed(ord("S"));			


var move_hort = key_right - key_left;
var move_vert = key_down - key_up;

if(move_hort != 0 && move_vert != 0) { //only cardinal direction movement
	move_vert = 0;
}

hort = spd * move_hort;
vert = spd * move_vert;

if(place_meeting(x+hort, y, obj_four_wall)) {
	
	while(!place_meeting(x+hort, y, obj_four_wall)) {
		x += sign(hort);	
	}
	
	hort = 0;	
}

if(place_meeting(x, y + vert, obj_four_wall)) {
	
	while(!place_meeting(x, y + vert, obj_four_wall)) {
		y += sign(vert);	
	}
	
	vert = 0;	
}

x += hort;
y += vert;