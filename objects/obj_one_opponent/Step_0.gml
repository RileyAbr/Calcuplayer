y += (yLag - y) / spd;
yLag = obj_one_ball.y;

y = clamp(y, 0, room_height- sprite_height / 2);