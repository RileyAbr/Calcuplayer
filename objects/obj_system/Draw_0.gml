draw_self();


draw_set_font(font_test);
draw_set_color(c_red);

draw_text(30, 20, global.firstDigit);
draw_text(30, 52, global.secondDigit);

if(global.draw) {
	DrawOutput();	
}
