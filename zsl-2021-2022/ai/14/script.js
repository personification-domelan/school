var handler = document.getElementById("handler")

var loc = window.location.pathname + window.location.search
loc.replace(/(.+\w\/)(.+)/, "/$2")

var o = document.getElementById("opis")
var n = document.getElementById("number")
var na = document.getElementById("numbera")
var a = document.getElementById("array")

//o.addEventListener("click", showName)
if (loc === "/number.html") {} else {n.addEventListener("click", passwd)}
//a.addEventListener("click", showArray)

if (o) {showName()}
if (na) {showCheckNumber()}
if (a) {showArray()}

function showName() {
    handler.innerHTML = "Imię: Dominik<br>Nazwisko: Durlik<br>Klasa: 3GI2T"
}

function passwd() {
    let pas = prompt("Podaj hasło:")
    if (pas != "liczba") {
        alert("Nieprawidłowe hasło.")
        return
    } else {location.href = "number.html"; alert('test')}
}

function showCheckNumber() {
    let x = parseInt(prompt("Podaj liczbę całkowitą.",0))
    let t
    if (x<0) {
        t = "Liczba "+x+" jest ujemna."
    } else if (x>0) {
        t = "Liczba "+x+" jest dodatnia."
    } else {
        t = "Liczba "+x+" jest zerowa."
    }
    handler.innerHTML = t
}

function showArray() {
    let x = parseInt(prompt("Podaj liczbę początkową.",0))
    let y = parseInt(prompt("Podaj liczbę końcową.",0))
    let t = "Liczby z zakresu od: "+x+" do: "+y+" są następujące:<br>"
    if (x<y) {
        for (let i = x; i < y+1; i++) {
            t = t+i+"<br>"
        }
    } else if (x>y) {
        for (let i = x; i > y-1; i--) {
            t = t+i+"<br>"
        }
    } else {
        t = "Brak zakresu. Liczby są identyczne."
    }
    handler.innerHTML = t
}