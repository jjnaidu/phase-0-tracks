// When the egg image is clicked, it is replaced by an
// image of a cracked open egg.

function changeImage(event) {
	event.target.src = "egg_cracked.jpg";
}

var photo = document.getElementById("egg-photo");
photo.addEventListener("click", changeImage);

// Text color is changed to red

var text = document.getElementById("text");
text.style.color = "red";

