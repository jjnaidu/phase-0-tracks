var colors = ["red", "blue", "yellow", "green"];
var horses = ["Ed", "Jonny", "Kevin", "Rolf"];

console.log(colors);
console.log(horses);

colors.push("purple");
horses.push("Jimmy");

console.log(colors);
console.log(horses);

var coloredHorses = {};

for (var i = 0; i < horses.length; i++) {	
	coloredHorses[horses[i]] = colors[i];
}

console.log(coloredHorses);

function Car(color, year, envFriendly) {
	console.log("New car:", this);

	this.color = color;
	this.year = year;
	this.envFriendly = envFriendly;

	this.accelerate = function() { console.log("VROOOOOOOOM!"); };

	console.log("Car Construction Complete");
}

var toyota = new Car("gray", 2010, true);
console.log(toyota);
toyota.accelerate();

var honda = new Car("blue", 2013, true);
console.log(honda);
honda.accelerate();

var dodge = new Car("red", 2015, false);
console.log(dodge);
dodge.accelerate();
