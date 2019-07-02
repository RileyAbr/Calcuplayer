if(ball_timer > 0) ball_timer--

if(ball_timer == 0) {
	ball_gen_range = random_range(0 + sprite_get_width(spr_six_ball), room_width - sprite_get_width(spr_six_ball));
	instance_create_layer(ball_gen_range, -40, "Instances", obj_six_ball);
	ball_timer = ball_timer_start;
}