if(triple_roll = 7) {
	for(var i = 0; i < 25000000; i++) { //25000000 was chosen completely arbitarily, but it feels right
		//wait	
	}
	
	room_goto(room_calculator);
}

if(roll_values[0] == roll_values[1]) {
	if(roll_values[1] == roll_values[2]) {
		switch(roll_values[2]) {
			case 7:
				triple_roll = 7;
				break;
		}
	}
}

