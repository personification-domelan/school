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

function checkiffilled1() {
    if (l1.value === "" || l2.value === "") {
        alert("Proszę uzupełnić wszystkie liczby.");return;
    }
    calc(1);
}

function checkiffilled2() {
    if (l1.value === "" || l2.value === "") {
        alert("Proszę uzupełnić wszystkie liczby.");return;
    }
    calc(2);
}

function checkiffilled3() {
    if (l1.value === "" || l2.value === "") {
        alert("Proszę uzupełnić wszystkie liczby.");return;
    }
    calc(3);
}

function checkiffilled4() {
    if (l1.value === "" || l2.value === "") {
        alert("Proszę uzupełnić wszystkie liczby.");return;
    } else if (l2.value == 0) {
        alert("Nie wolno dzielić przez zero.");return;
    }
    calc(4);
}

function calc(mode) {
    switch (mode) {
        case 1:
           h3.innerHTML = "Dodawanie: "+ parseFloat(parseFloat(l1.value) + parseFloat(l2.value));
           break;
        case 2:
           h3.innerHTML = "Odejmowanie: "+ parseFloat(parseFloat(l1.value) - parseFloat(l2.value));
           break;
        case 3:
           h3.innerHTML = "Mnożenie: "+ parseFloat(parseFloat(l1.value) * parseFloat(l2.value));
           break;
        case 4:
           h3.innerHTML = "Dzielenie: "+ parseFloat(parseFloat(l1.value) / parseFloat(l2.value));
           break;
        default:
            alert("ERROR: calc function borke (unset mode detected)");
    }
}

baner.addEventListener("click", gotoindex);
b1.addEventListener("click", checkiffilled1);b2.addEventListener("click", checkiffilled2);b3.addEventListener("click", checkiffilled3);b4.addEventListener("click", checkiffilled4);

if (h1) {
    h1.innerHTML = "Znajdujesz się na stronie o tematyce matematycznej."; h1.style.fontStyle = "italic";
}
if (h2) {
    h2.innerHTML = "Moje DANE to: Dominik Durlik 3GI2T"; h2.style.fontStyle = "italic";
}