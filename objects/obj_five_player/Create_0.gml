global.turnOver = false;
global.attackSelected = 0;

// This ensure that the battle type will never be the same twice in a row
//  0 is rock, paper, scissors
//  1 is Pokemon
//  2 is Fire Emblem
switch(global.last_battle_type) {
	case 0:
		global.attack_types = irandom_range(1, 2);
		global.last_battle_type = global.attack_types;
		break;
	case 1:
		global.attack_types = irandom_range(0, 1);
		if(global.attack_types == 1) global.attack_types = 2;
		global.last_battle_type = global.attack_types;
		break;
	case 2:
		global.attack_types = irandom_range(0, 1);
		global.last_battle_type = global.attack_types;
		break;
}

global.attack_sprite_speed = 0;

image_index = global.attack_types;
image_speed = global.attack_sprite_speed;