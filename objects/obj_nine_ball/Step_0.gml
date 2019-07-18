/*
if(global.can_hold && selected) {
	x = mouse_x;
	y = mouse_y;
}
*/

if(aiming) {
	x = mouse_x;
	y = mouse_y;

	x = clamp(x, 64, 288);
	y = clamp(y, 380, 512);
}