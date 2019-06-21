///GetOutput(first, second)
/*
Gives the output of the first and second digit
*/

//Somewhat messy implementation, but should cover all the bases. Will default to addition if something goes wrong

switch(global.operator) {
	case "-":
		return argument0 - argument1;
		
	case "*":
		return argument0 * argument1;
		
	case "/":
		return floor(argument0 / argument1);
		
	case "+":
	default:
		return argument0 + argument1;
}
