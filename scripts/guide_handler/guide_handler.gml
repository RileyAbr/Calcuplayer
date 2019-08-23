rooms = array_builder(
						room_levelZero,
						room_levelOne,
						room_levelTwo,
						room_levelThree,
						room_levelFour,
						room_levelFive,
						room_levelSix,
						room_levelSeven,
						room_levelEight,
						room_levelNine
)


global.room_visited[argument0] = true;
room_goto(rooms[argument0]);