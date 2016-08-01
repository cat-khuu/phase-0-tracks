console.log("script is running")

function addRedBorder() {
  var photo = document.getElementById("corgi");
  photo.style.border = "2px solid blue";
}

var photo = document.getElementById("corgi");
photo.addEventListener("click", addRedBorder);