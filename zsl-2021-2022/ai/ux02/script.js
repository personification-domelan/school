var n1_1 = document.getElementById('n1_1')
var n1_2 = document.getElementById('n1_2')
var n2 = document.getElementById('n2')

var b1 = document.getElementById('button1')
var b2 = document.getElementById('button2')
var b3 = document.getElementById('button3')

var holder1 = document.getElementById('holder1')
var holder2 = document.getElementById('holder2')
var holder3 = document.getElementById('holder3')

function showsum(){
    let t = parseInt(n1_1.value)+parseInt(n1_2.value)
    holder1.innerHTML = "Suma: "+t
}

function showheight(){
    n2t = parseInt(n2.value)
    let t, tt
    if (n2t < 150) {
        tt = "niski"
    } else if(n2t > 180) {
        tt = "wysoki"
    } else {
        tt = "średni"
    }
    t = "Podany wzrost jest: "+tt
    holder2.innerHTML = t
}

b1.addEventListener("click", showsum)
b2.addEventListener("click", showheight)
b3.addEventListener("click", show)