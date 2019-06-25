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