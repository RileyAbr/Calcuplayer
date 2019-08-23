key_left = keyboard_check(vk_left) 
			|| keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) 
			|| keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) 
			|| keyboard_check_pressed(vk_up)
			|| keyboard_check_pressed(ord("W"));

var move = key_right - key_left;

hort = move * spd;
vert += grav;

if(place_meeting(x, y + 1, obj_three_boundary) && (key_jump)) {
	vert = -jumpheight;	
}


//Hortizontal Movement
if(place_meeting(x+hort, y, obj_three_boundary)) {
	
	while(!place_meeting(x+hort, y, obj_three_boundary)) {
		x += sign(hort);	
	}
	
	hort = 0;	
}

x += hort;

//Gravity & Jumping
if(place_meeting(x, y + vert, obj_three_boundary)) {
	
	while(!place_meeting(x, y + vert, obj_three_boundary)) {
		y += sign(vert);	
	}
	
	vert = 0;	
}

y += vert;


