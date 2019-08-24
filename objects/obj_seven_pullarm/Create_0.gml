image_index = 0;
image_speed = 0;

// Diasbled when the game ends, with a countdown to show the triple sevens
can_pull_bar = true;
winner_timer = 0;

money_earned = 0;
is_money_summed = false;
roll_values = array_builder(irandom(3), 7, irandom(5));
triple_roll = "";