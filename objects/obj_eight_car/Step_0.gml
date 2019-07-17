key_left = keyboard_check(vk_left) 
			|| keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) 
			|| keyboard_check(ord("D"));
key_accelerate = keyboard_check(vk_up)
			|| keyboard_check(ord("W"));
key_reverse = keyboard_check(vk_down) 
			|| keyboard_check(ord("S"));
			
x_axis = key_right - key_left;
y_axis = key_reverse - key_accelerate;

is_moving = (y_axis != 0);

//determine turn direction
if(is_moving) {
	dir = y_axis;
	
	if(x_axis != 0) {
		if(y_axis == -1) { //for driving forward and turning
			if(key_left) {
				image_angle += turn_rate;	
			}
			else if(key_right) {
				image_angle -= turn_rate;	
			}
		}
		else if(y_axis == 1) { //for driving back and turning
			if(key_left) {
				image_angle -= turn_rate_rev;	
			}
			else if(key_right) {
				image_angle += turn_rate_rev;	
			}
		}
	}
	
		//sets acceleration and speed
	if(y_axis == -1) {
		if(spd < max_spd) {
			spd += accel;	
		}
		else if(spd > max_spd) {
			spd = max_spd;	
		}
	}
	else if(y_axis == 1) {
		if(spd > -max_spd_rev) {
			spd -= accel_rev;	
		}
		else if(spd < -max_spd_rev) {
			spd = -max_spd_rev;	
		}
	}
}
else {
	if(dir == -1) {
		if(spd > 0) {
			spd -= frict;	
		}
		else if(spd <= 0) {
			spd = 0;	
		}
	}
	else if(dir == 1) {
		if(spd < 0) {
			spd += frict;	
		}
		else if(spd >= 0) {
			spd = 0;	
		}
	}
}


hort = lengthdir_x(spd, image_angle);
vert = lengthdir_y(spd, image_angle);

//Collision code, very similar to the algorithm used in the platformer section
if(place_meeting(x + hort, y, obj_eight_wall)) {
	
	while(!place_meeting(x+hort, y, obj_eight_wall)) {
		x += sign(hort);	
	}
	
	hort = 0;	
}
if(place_meeting(x, y + vert, obj_eight_wall)) {
	
	while(!place_meeting(x, y + vert, obj_eight_wall)) {
		y += sign(vert);	
	}
	
	vert = 0;	
}

//Handles if they should collide with the side of the bridge or not
if(is_raised) {
	if(place_meeting(x + hort, y, obj_eight_bridge_wall)) {
	
	while(!place_meeting(x+hort, y, obj_eight_bridge_wall)) {
		x += sign(hort);	
	}
	
	hort = 0;	
	}
	if(place_meeting(x, y + vert, obj_eight_bridge_wall)) {
	
		while(!place_meeting(x, y + vert, obj_eight_bridge_wall)) {
			y += sign(vert);	
		}
	
		vert = 0;	
	}
}

//Handles if they should collide with the side of the tunnel or not
if(!is_raised) {
	if(place_meeting(x + hort, y, obj_eight_tunnel_wall)) {
	
	while(!place_meeting(x+hort, y, obj_eight_tunnel_wall)) {
		x += sign(hort);	
	}
	
	hort = 0;	
	}
	if(place_meeting(x, y + vert, obj_eight_tunnel_wall)) {
	
		while(!place_meeting(x, y + vert, obj_eight_tunnel_wall)) {
			y += sign(vert);	
		}
	
		vert = 0;	
	}
}


x += hort;
y += vert;





