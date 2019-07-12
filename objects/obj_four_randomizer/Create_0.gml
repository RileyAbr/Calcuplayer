//Grid used to generate the placement of the blocks

/* Key
-1 = empty
0 = wall
1 = player
2 = door
3 = key
4 = block

*/
randomize();


randomizer = ds_grid_create(16, 19);
ds_grid_set_region(randomizer, 0, 0, 15, 18, -1);

grid_top_left = 256; //x value to start the placement from

player_placed = false;
door_placed = false;
key_placed = false;


//Set up the predetermined walls
//Left arm of the "4"
for(var i = 2; i <= 7; i++) {
	randomizer[# 4, i] = 0;
}

//Middle bucket of the "4"
for(var j = 5; j <= 10; j++) {
	randomizer[# j, 7] = 0;
}

//Right arm of the "4"
for(var i = 2; i <= 14; i++) {
	randomizer[# 11, i] = 0;
}


//Place the player
while(!player_placed) {
	player_start_x = irandom(15); //16 is the width of the grid
	player_start_y = irandom(18); //19 is the height of the grid
	
	if(randomizer[# player_start_x, player_start_y] == -1) {
		randomizer[# player_start_x, player_start_y] = 1;
		instance_create_layer((grid_top_left) + 32 * player_start_x, 32 * player_start_y, 
							"Instances", obj_four_player);
		player_placed = true;
	}
}

//Place the door
while(!door_placed) {
	door_start_x = irandom(15); //16 is the width of the grid
	door_start_y = irandom(18); //19 is the height of the grid
	
	if(randomizer[# door_start_x, door_start_y] == -1) {
		randomizer[# door_start_x, door_start_y] = 2;
		instance_create_layer((grid_top_left) + 32 * door_start_x, 32 * door_start_y, 
							"Instances", obj_four_door);
		door_placed = true;
	}
}

//Place the key
while(!key_placed) {
	key_start_x = irandom(15); //16 is the width of the grid
	key_start_y = irandom(18); //19 is the height of the grid
	
	if(randomizer[# key_start_x, key_start_y] == -1) {
		randomizer[# key_start_x, key_start_y] = 3;
		instance_create_layer((grid_top_left) + 32 * key_start_x, 32 * key_start_y, 
							"Instances", obj_four_key);
		key_placed = true;
	}
}

//Place random blocks for obstacles
//Iterates twice for a second dimensional array
var blocks_to_generate = irandom_range(50, 70);
for(var i = 0; i < blocks_to_generate; i++) {
	var block_start_x = irandom(15); //16 is the width of the grid
	var block_start_y = irandom(18); //19 is the height of the grid
	
	if(randomizer[# block_start_x, block_start_y] == -1) {
		
		if(ds_grid_value_disk_exists(randomizer, block_start_x, block_start_y, 2, 1)
			|| ds_grid_value_disk_exists(randomizer, block_start_x, block_start_y, 2, 2)
			|| ds_grid_value_disk_exists(randomizer, block_start_x, block_start_y, 2, 3)) {
			i--; //add another try on top
		}
		else {
			randomizer[# block_start_x, block_start_y] = 4;
			instance_create_layer((grid_top_left) + 32 * block_start_x, 32 * block_start_y, "Instances", obj_four_block);
		}
	}
}


//Fill entire page script (unused)
/*
for(var i = 0; i < ds_grid_height(randomizer); i++) {
	
	for(var j = 0; j < ds_grid_width(randomizer); j++) {
	
		if(randomizer[# j, i] == -1) {
			instance_create_layer((grid_top_left) + 32 * j, 32 * i, "Instances", obj_four_block);
		}
	
	}
	
} */