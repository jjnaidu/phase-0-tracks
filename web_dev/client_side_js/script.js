function changeImage(event) {
	event.target.src = "egg_cracked.jpg";
}

var photo = document.getElementById("egg-photo");
photo.addEventListener("click", changeImage);

var text = document.getElementById("text");
text.style.color = "red";

