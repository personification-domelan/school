var handler1 = document.getElementById("handler1")
var handler2 = document.getElementById("handler2")
var handler3 = document.getElementById("handler3")

var n1 = document.getElementById("n1")
var n2 = document.getElementById("n2")
var n3_1 = document.getElementById("n3_1")
var n3_2 = document.getElementById("n3_2")

var button1 = document.getElementById("button1")
var button2 = document.getElementById("button2")
var button3 = document.getElementById("button3")

function generateNUMBER1() {
    let numb, sum = 0
    handler1.innerHTML = "Sczytana liczba: "+n1.value+"<br>"
    for (let i = 0; i < parseInt(n1.value); i++) {
        numb = Math.round(Math.random()*99)+1
        sum += numb
        if (i < parseInt(n1.value)-1) {
            handler1.innerHTML += numb+" + "
        } else {
            handler1.innerHTML += numb+" = "
        }
    }
    handler1.innerHTML += sum
}

function generateNUMBER2() {
    let numb, min, max, num = []
    handler2.innerHTML = "Ilość powtórzeń: "+parseInt(n2.value)+"<br>"
    for (let i = 0; i < parseInt(n2.value); i++) {
        numb = Math.round(Math.random()*99)+1
        num[i] = numb
        handler2.innerHTML += numb+", "
    }
    min = num[0]; max = num[0];
    for (let i = 0; i < parseInt(n2.value); i++) {
        if (num[i] > max) {
            max = num[i]
        }
        if (num[i] < min) {
            min = num[i]
        }
    }
}

function calcpaint() {
    let can = 1.5, h = 2.5, p1, p2, Pa, count
    p1 = n3_1.value*h; p2 = n3_2.value*h; Pa = parseFloat((2*p1)*(2*p2))
    count = Math.ceil(Pa/can)
    handler3.innerHTML = "Wieklość pomieszczenia:<table><tr><th>Długość</th><th>Szerokość</th><th>Wysokość</th><th>Powierzchnia do pomalowania</th><th>Puszki farby wymagane<br>do pomalowania</th></tr><tr><td>"+n3_1.value+"</td><td>"+n3_2.value+"</td><td>"+h+"</td><td>"+Pa+"cm<sup>2</sup></td><td>"+count+"</td></tr></table>"    
}

button1.addEventListener("click", generateNUMBER1)
button2.addEventListener("click", generateNUMBER2)
button3.addEventListener("click", calcpaint)