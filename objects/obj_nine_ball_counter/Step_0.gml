if(global.cans_left <= 0) {
	room_goto(room_calculator);	
}

if(global.balls_left >= 0) {
	if(global.create_ball) {
		
		global.create_ball = false;
		global.balls_left--;
		instance_create_layer(256, 416, "Instances", obj_nine_aim_ball);
		
	}	
}
else {
	room_restart();	
}

show_debug_message(global.balls_left);