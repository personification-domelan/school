var n1 = document.getElementById("x")
var n2 = document.getElementById("y")

var h1 = document.getElementById("handler")

var b1 = document.getElementById("button")

function calc(x, y) {
    let sum, price = 8, total, height = 2.7
    sum = (x*height*2) + (y*height*2)
    total = sum * price
    h1.innerHTML = "Powierzchnia całkowita ścian: "+sum+"m<sup>2</sup>.<br>"
    h1.innerHTML += "Koszt malowania: "+total+" zł."
}

b1.addEventListener("click", () => (calc(n1.value,n2.value)))