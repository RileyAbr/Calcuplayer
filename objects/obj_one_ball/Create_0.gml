//Nice Pong mechanics courtesy of: 
//		https://forum.yoyogames.com/index.php?threads/solved-need-help-with-the-pong-ball-movements.45476/

spd = 9.5;

// If the ball hits nothing for 6 seconds, resets the game
timeout = 0;

randomSelector = random_range(0, 1);
if (randomSelector == 1) speed = spd; else speed = -spd;
direction = round(random(360));