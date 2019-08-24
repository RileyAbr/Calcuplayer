//Set the operator if a first digit has been selected
if(global.digit[1] == false && global.digit[0] == true) {
	global.operator = argument0;
	global.digit[1] = true;
}