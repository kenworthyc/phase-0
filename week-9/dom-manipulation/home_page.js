// DOM Manipulation Challenge

// I worked on this challenge [Regina Wong and Caroline Kenworthy].

// Add your JavaScript calls to this page:

// Release 0:

document.getElementById("release-0").className = "done";

// Release 1:

document.getElementById("release-1").style.display = "none";

// Release 2:
var header = document.getElementsByTagName("h1")[0];
header.innerHTML = "I completed release 2.";

// Release 3:

document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 4:

var rel4 = document.getElementsByClassName("release-4")

for (i = 0; i < rel4.length; i++) {
      rel4[i].style.fontSize = "2em";
}

// Release 5:

var template = document.getElementById("hidden");
document.body.appendChild(template.content.cloneNode(true));

