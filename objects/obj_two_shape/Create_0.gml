var selected_shape = global.shape_sprite;

if(id = global.shape_to_change_id) {
	var shape_sprite_odd = irandom(1)
	
	if(shape_sprite_odd = 1) {	
		selected_shape -= 1;
		if(selected_shape < 1) selected_shape = 3;
	}
	else {
		selected_shape += 1;
		if(selected_shape > 2) selected_shape = 1;
	}
}

if(selected_shape == 0) {
	sprite_index = spr_two_squ;	
}
else if(selected_shape == 1) {
	sprite_index = spr_two_tri;
}
else {
	sprite_index = spr_two_circ;
}

