randomize();

global.firstDigit = "";
global.operator = "";
global.secondDigit = "";

//Array used to keep track of which digit the calculator is waiting for
global.digit = false;
global.digit[0] = false;
global.digit[1] = false;
global.digit[2] = false;

global.drawDigits = false;


//Used in the RollSlots method;
global.times_pulled = 0;