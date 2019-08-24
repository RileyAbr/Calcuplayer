draw_self();

draw_set_font(font_round_sz32);
draw_set_color(c_black);
draw_set_valign(fa_middle);

// Draw the running money score
draw_set_halign(fa_right);
draw_text(642, 52, "$" + string_format(money_earned, 0, 0));


draw_set_halign(fa_center);
draw_text(420, 177, roll_values[0]);
draw_text(512, 175, roll_values[1]);
draw_text(604, 175, roll_values[2]);