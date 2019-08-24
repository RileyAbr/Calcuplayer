draw_self();

draw_set_color(c_white);
draw_set_font(font_round_sz32);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(64, 32 , string_format(global.balls_left + 1, 0, 0) + " Balls Left");