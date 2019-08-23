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

if(global.room_visited[argument0]) {
	SetDigits(argument0, rooms[argument0]);
}
else {
	// This very complicated line is called if it is the first time entering a room, 
	// then gets the index of the room (the list of Rooms in Resources is technically an array)
	// it finds the index via building a string based off the above array of rooms
	SetDigits(argument0, asset_get_index(room_get_name(rooms[argument0]) + "_guide"));
}
