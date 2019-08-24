if (direction = 0 || direction = 180) {
    direction = direction + round(random_range(-25, 25));
}

if(timeout < (room_speed * 6)) {
	timeout++;	
}
else {
	room_restart();	
}
