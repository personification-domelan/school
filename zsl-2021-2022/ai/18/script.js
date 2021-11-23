var handler1 = document.getElementById("handler1")
var handler2 = document.getElementById("handler2")
var handler3 = document.getElementById("handler3")

var n1 = document.getElementById("n1")
var n2 = document.getElementById("n2")
var n3 = document.getElementById("n3")

var button1 = document.getElementById("button1")
var button2 = document.getElementById("button2")
var button3 = document.getElementById("button3")

function generateNUMBER() {
    handler2.innerHTML = "Ilość powtórzeń: "+parseInt(n_2.value)+"<br>"
    let numb; let min; let max; let num = []
    for (let i = 0; i < parseInt(n_2.value); i++) {
        numb = parseInt(Math.round(Math.random()*99)+1)
        num[i] = numb
        handler2.innerHTML = handler2.innerHTML+numb+", "
    }
    min = num[0]; max = num[0];
    for (let i = 0; i < parseInt(n_2.value); i++) {
        if (num[i] > max) {
            max = num[i]
        }
        if (num[i] < min) {
            min = num[i]
        }
    }
    handler2.innerHTML = handler2.innerHTML+"<br>Minimalna: "+min+"<br>Maxymalna: "+max
}

button1.addEventListener("click", )
button2.addEventListener("click", generateNUMBER)
button3.addEventListener("click", )