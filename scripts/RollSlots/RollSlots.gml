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
window_one_value = irandom(6);

//This statement helps the user get closer to 777 the longer they pull
if(global.times_pulled > 7) {
	if(random(1) <= (global.times_pulled / 15)) //Takes a real number between 0.0-1.0 to compare to the amount of times pulled
	{
		window_one_value = 7;	
		
		if(global.times_pulled > 7) {
			window_two_value = 7;	
			
			if(global.times_pulled >= 17) {
				window_three_value = 7;
			}
		}
	}
}

//The next value brings modifies the seven possible results to be within 1 value of the value previously selected
window_two_value = irandom(6);
if(window_two_value + 1 == window_one_value || window_two_value - 1 == window_one_value) {
	window_two_value = window_one_value;
}

//The last value does the same as the second, but with a larger margin to check
window_three_value = irandom(6);
if(window_three_value + 1 == window_two_value 
	|| window_three_value + 2 == window_one_value
	|| window_three_value - 1 == window_two_value
	|| window_three_value - 2 == window_one_value) {
	window_three_value = window_two_value;
}

window_values = array_builder(window_one_value, window_two_value, window_three_value);

global.times_pulled += 1;

//For testing purposes
show_debug_message(window_values);
show_debug_message(global.times_pulled);
show_debug_message((global.times_pulled / 30));

return window_values;
