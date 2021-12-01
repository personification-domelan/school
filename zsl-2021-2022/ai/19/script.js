var h1 = document.getElementById("h1")
var h2 = document.getElementById("h2")
var h3 = document.getElementById("h3")

var l1 = document.getElementById("l1")
var l2 = document.getElementById("l2")

var baner = document.getElementById("baner")

var b1 = document.getElementById("plus")
var b2 = document.getElementById("minus")
var b3 = document.getElementById("multiply")
var b4 = document.getElementById("divide")

function gotoindex() {
    window.location = "index.html"
}

function checkiffilled() {
    if (l1.value === "" || l2.value === "") {
        alert("Proszę uzupełnić wszystkie liczby.")
    }
    if () {
        
    }
}

baner.addEventListener("click", gotoindex);
b1.addEventListener("click", checkiffilled);
b2.addEventListener("click", checkiffilled);
b3.addEventListener("click", checkiffilled);
b4.addEventListener("click", checkiffilled);

if (h1) {
    h1.innerHTML = "Znajdujesz się na stronie o tematyce matematycznej."; h1.style.fontStyle = "italic";
}
if (h2) {
    h2.innerHTML = "Moje DANE to: Dominik Durlik 3GI2T"; h2.style.fontStyle = "italic";
}