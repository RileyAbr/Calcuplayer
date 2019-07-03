//Super smart piece of code to help create arrays as you would in other OOP languages
//Courtesy of: https://forum.yoyogames.com/index.php?threads/initialize-an-array-in-one-line.4232/
var arr;
for (var i=0;i<argument_count;i+=1)
{
    arr[i] = argument[i];
}
return arr;