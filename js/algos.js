/*
Find the longest phrase
Take array of strings as argument
For each string in array
	Compare string length with length of longest string found thus far
	If current string is longer, make longest string equal to current string
Return longest string
*/

function longest(strs) {
	var long = "";
	for (var i = 0; i < strs.length; i++) {
		if (strs[i].length > long.length) {
			long = strs[i];
		}
	}

	return long;
}

var phrases1 = ["long phrase", "longest phrase", "longer phrase"];
var phrases2 = ["biggest", "bigger", "big"];
var phrases3 = ["red", "orange", "yellow", "rainbow"];
console.log(longest(phrases1));
console.log(longest(phrases2));
console.log(longest(phrases3));

/*
Find a Key-Value Match
Takes two objects as arguments
For each key in object 1
	Check all keys in object 2
	If key-value pair in object 1 matches pair in object 2, return true
If no match is found, return false
*/

function match(obj1, obj2) {
	for (var i in obj1) {
		for (var j in obj2) {
			if ((i == j) && (obj1[i] == obj2[j])) {
				return true;
			}
		}
	}

	return false;
}

var hash1 = {name: "Steven", age: 54};
var hash2 = {name: "Tamir", age: 54};
var hash3 = {name: "Jay", age: 23};

console.log(match(hash1, hash2));
console.log(match(hash1, hash3));

/*
Generate Random Test Data


*/