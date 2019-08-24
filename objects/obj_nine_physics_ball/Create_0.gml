stationary_timer = 330;

x_distance = obj_nine_slingshot.x - x;
y_distance = y - obj_nine_slingshot.y;

physics_apply_impulse(x, y, 38 * x_distance, -38 * y_distance);	