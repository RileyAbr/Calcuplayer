roll_symbols = array_builder(
							spr_seven_cherry, 
							spr_seven_exclam,
							spr_seven_bomb,
							spr_seven_question,
							spr_seven_heart,
							spr_seven_dollarsign,
							spr_seven_seven
							); 
window_one_value = "";
window_two_value = "";
window_three_value = "";

//The first value is decided purely randomly from the available values
window_one_value = random(6);

//The next value brings modifies the seven possible results to be within 1 value of the value previously selected
window_two_value = random(6);
if(window_two_value + 1 == window_one_value || window_two_value - 1 == window_one_value) {
	window_two_value = window_one_value;
}

//The last value does the same as the second, but with a larger margin to check
window_three_value = random(6);
if(window_three_value + 1 == window_one_value 
	|| window_three_value + 2 == window_one_value
	|| window_three_value - 1 == window_one_value
	|| window_three_value - 2 == window_one_value) {
	window_three_value = window_one_value;
}

window_values = array_builder(window_one_value, window_two_value, window_three_value);

return window_values;
