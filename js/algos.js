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

// Test longest function

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

// Test match function

var hash1 = {name: "Steven", age: 54};
var hash2 = {name: "Tamir", age: 54};
var hash3 = {name: "Jay", age: 23};

console.log(match(hash1, hash2));
console.log(match(hash1, hash3));

/*
Generate Random Test Data
Takes number of words as argument
While length of array is less than number of words
	Generate random number to represent length of new word
	While length of word is less than random number, add new character
	Add new string to array
Return array
*/

function randomData(len) {
	var data = [];
	var chars = "abcdefghijklmnopqrstuvwxyz";
	var count = 0;
	var wordLen = 0;
	var index = 0;

	while (count < len) {
		var word = "";
		wordLen = Math.floor((Math.random() * 10) + 1);
		for (var i = 0; i < wordLen; i++) {			
			index = Math.floor(Math.random() * 26);
			word += chars[index];
		}

		data.push(word);

		count++;
	}

	return data;
}

// Test randomData function

for (var i = 0; i < 10; i++) {
	var rand = randomData(3);
	console.log("");
	console.log(rand);
	console.log(longest(rand));
}


