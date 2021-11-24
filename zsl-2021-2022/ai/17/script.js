var holder1 = document.getElementById('holder1')
var holder2 = document.getElementById('holder2')
var holder3 = document.getElementById('holder3')

var n1 = document.getElementById('n1')
var n2 = document.getElementById('n2')

var button1 = document.getElementById('button1')
var button2 = document.getElementById('button2')

function calcabs() {
    let t = n1.value
    holder1.innerHTML = "Bazwzględna z: "+t+" jest równa "+Math.abs(t)
}

function calccircle() {
    let t = n2.value
    let P = Math.pow(t, 2)*Math.PI
    let O = 2*Math.PI*t
    holder2.innerHTML = "Koło ma promień: "+t+", więc jego Pole jest równe: "+P+", a Obwód: "+O
}

let t = [], sum = 0
for (let i = 0; i < 5; i++) {
    t[i] = Math.round(Math.random()*100)
}
holder3.innerHTML = ""
for (let i = 0; i < t.length; i++) {
    holder3.innerHTML += "liczba "+(i+1)+" to: "+t[i]+"<br>"
    sum += t[i]
}
holder3.innerHTML += "<br>Suma tych liczb wysoni: "+sum

button1.addEventListener("click", calcabs)
button2.addEventListener("click", calccircle)
randandsum()