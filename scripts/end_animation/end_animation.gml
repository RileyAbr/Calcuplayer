sprite_progress = floor(image_index); //The array of sprites of not stored as integers, so I rounded it down

if(sprite_progress >= sprite_get_number(argument0) - 1) {
	image_index = 0;
	image_speed = 0;
}