var h1 = document.getElementById("h1")
var h2 = document.getElementById("h2")
var baner = document.getElementById("baner")

function gotoindex() {
    window.location = "index.html"
}

baner.addEventListener("click", gotoindex);

h1.innerHTML = "Znajdujesz się na stronie o tematyce matematycznej."; h1.style.fontStyle = "italic";
h2.innerHTML = "Moje DANE to: Dominik Durlik 3GI2T"; h2.style.fontStyle = "italic";