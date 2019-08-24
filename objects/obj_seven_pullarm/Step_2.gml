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
				break;
		}
	}
}

// Game has been won
if(!can_pull_bar) {
	if(winner_timer < (room_speed * 2)) {
		winner_timer++;
		
	}	
	else {
		room_goto(room_calculator);	
	}
}

