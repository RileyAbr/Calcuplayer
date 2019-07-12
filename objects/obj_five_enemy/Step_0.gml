if(readyToFight) {
	for(var i = 0; i < 30000000; i++) {
		//wait	
	}

	switch(global.attackSelected) {
		case 1:
			if(enemyAttack = 3) room_goto(room_calculator);
			else room_restart();
			break;
		case 2:
			if(enemyAttack = 1) room_goto(room_calculator);
			else room_restart();
			break;
		case 3:
			if(enemyAttack = 2) room_goto(room_calculator);
			else room_restart();
			break;
	}

}

if(global.turnOver && !readyToFight) {
	
	enemyAttack = irandom_range(1, 3);
	
	switch(enemyAttack) {
		case 1:
			sprite_index = spr_five_f_attack1
			image_index = global.attack_types;
			image_speed = global.attack_sprite_speed;
			break;
		case 2:
			sprite_index = spr_five_f_attack2;
			image_index = global.attack_types;
			image_speed = global.attack_sprite_speed;
			break;
		case 3:
			sprite_index = spr_five_f_attack3;
			image_index = global.attack_types;
			image_speed = global.attack_sprite_speed;
			break;
	}
	
	readyToFight = true;
}
