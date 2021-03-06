draw_set_color(global.blackFontColor);
draw_set_font(font_calculator_sz51);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw the first digit
if(global.digit[0]) {
	draw_text(369, 23, global.firstDigit);
}

// Draw the operator
draw_text(431, 24, global.operator);

// Draw the second digit and the final value
if(global.digit[2]) {
	//Draw the second digit
	draw_text(497, 23, global.secondDigit);
	
	//Draw the output from the entire statement
	draw_text(564, 24, "=");
	draw_text(625, 23, GetOutput(global.firstDigit, global.secondDigit));
}