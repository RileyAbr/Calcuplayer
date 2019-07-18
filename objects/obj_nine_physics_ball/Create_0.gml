stationary_timer = 330;

x_distance = obj_nine_slingshot_center.x - x;
y_distance = y - obj_nine_slingshot_center.y;

show_debug_message(x_distance);
show_debug_message(y_distance);

physics_apply_impulse(x, y, 35 * x_distance, -40 * y_distance);	