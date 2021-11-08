var handler = document.getElementById("handler");

var o = document.getElementById("opis");
var n = document.getElementById("number");
var a = document.getElementById("array");

o.addEventListener("click", showName);
n.addEventListener("click", showCheckNumber);
a.addEventListener("click", showArray);

function showName() {
    handler.innerHTML = "Imię: Dominik<br>Nazwisko: Durlik<br>Klasa: 3GI2T";
}

function showCheckNumber() {
    let pas = prompt("Podaj hasło:");
    if (pas != "liczba") {
        alert("Nieprawidłowe hasło.");
        return;
    }
    let x = parseInt(prompt("Podaj liczbę całkowitą.",0));
    let t;
    if (x<0) {
        t = "Liczba "+x+" jest ujemna.";
    } else if (x>0) {
        t = "Liczba "+x+" jest dodatnia.";
    } else {
        t = "Liczba "+x+" jest zerowa.";
    }
    handler.innerHTML = t;
}

function showArray() {
    let x = parseInt(prompt("Podaj liczbę początkową.",0));
    let y = parseInt(prompt("Podaj liczbę końcową.",0));
    let t = "Liczby z zakresu od: "+x+" do: "+y+" są następujące:<br>";
    if (x<y) {
        for (let i = x; i < y+1; i++) {
            t = t+i+"<br>";
        }
    } else if (x>y) {
        for (let i = x; i > y-1; i--) {
            t = t+i+"<br>";
        }
    } else {
        t = "Brak zakresu. Liczby są identyczne."
    }
    handler.innerHTML = t;
}