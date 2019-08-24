if(!is_money_summed) {
	for(var i = 0; i < 3; i++) {
		money_earned += roll_values[i] * 100;
	
		if(roll_values[i] == 7) {
			money_earned += 300;	
		}
	}
	
	is_money_summed = true;
}

if(roll_values[0] == roll_values[1]) {
	if(roll_values[1] == roll_values[2]) {
		switch(roll_values[2]) {
			case 7:
				can_pull_bar = false;
				if(winner_timer > (room_speed * 2)) {
					triple_roll = 7;
				}
				break;
		}
	}
}

if(triple_roll = 7) {

	room_goto(room_calculator);
}

