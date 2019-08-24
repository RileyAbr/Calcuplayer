// Set up all the RNG
randomize();

//Basic font color
global.blackFontColor = $000000;

// Variables that hold the values from the calculator buttons
global.firstDigit = "";
global.operator = "";
global.secondDigit = "";

//Array used to keep track of which digit the calculator is waiting for
global.digit = false;
global.digit[0] = false;
global.digit[1] = false;
global.digit[2] = false;

global.room_visited = false;
global.room_visited[0] = false; 
global.room_visited[1] = false; 
global.room_visited[2] = false;
global.room_visited[3] = false; 
global.room_visited[4] = false; 
global.room_visited[5] = false; 
global.room_visited[6] = false; 
global.room_visited[7] = false; 
global.room_visited[8] = false; 
global.room_visited[9] = false;  


//Used within the Duel minigame
global.last_battle_type = 2;

//Used in the RollSlots method;
global.times_pulled = 0;