randomize();

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


//Used in the RollSlots method;
global.times_pulled = 0;