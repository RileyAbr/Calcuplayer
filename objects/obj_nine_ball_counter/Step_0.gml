if(global.cans_left <= 0) {
	room_goto(room_calculator);	
}

if(global.balls_left >= 0) {
	if(global.aiming && global.create_ball) {
		global.balls_left--;
		instance_create_layer(256, 416, "Instances", obj_nine_aim_ball);
		global.create_ball = false;
	}	
}
else {
	room_restart();	
}