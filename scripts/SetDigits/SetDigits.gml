/*
if(global.firstOrSecond) {
	//Set global values to empty strings, in order to clean out the display
	global.firstDigit = "";
	global.operator = "";
	global.secondDigit = "";
	
	global.firstOrSecond = false;
	global.draw = false;
	global.firstDigit = argument0;
	
	//Handle Room Navigation
	room_goto(argument1);
}
else {
	//Checks if the operator has been assigned, otherwise blocks off any digits from being added
	if(global.operator != "") {
		global.firstOrSecond = true;
		global.secondDigit = argument0;
		
		room_goto(argument1);
	}
	
}
*/

if(global.digit[0] == false) {
	global.firstDigit = argument0;
	global.digit[0] = true;
	
	room_goto(argument1);
}
else if(global.digit[1] == false) {
	//Do nothing
}
else if(global.digit[2] == false) {
	global.secondDigit = argument0;
	global.digit[2] = true;
	
	room_goto(argument1);
}
else { //This ic alled if a number is selected when a full statement has already been evaluated
	ClearDigits();
	global.firstDigit = argument0;
	global.digit[0] = true;
	
	room_goto(argument1);
}

