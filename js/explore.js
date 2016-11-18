// String reverse method
// Accept string as argument
// Iterate backwards through string
//     Start with last character in string
//     For each character, add character to new string
// 	   Continue until all characters in string are added to new string
// Return new string

function reverse(str)
{
	var newStr = "";

	for (var i = str.length - 1; i >= 0; i--) {
		newStr += str[i];
	}

	return newStr;
}

var revStr = reverse("Hello World!");
if ((2 + 2) == 4){
	console.log(revStr);
}