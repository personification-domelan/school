var n = document.getElementById('name')
var quan = document.getElementById('quan')
var nu = document.getElementById('number')
var m = document.getElementById('multi')

var b1 = document.getElementById('button1')
var b2 = document.getElementById('button2')

var h1 = document.getElementById('holder1')
var h2 = document.getElementById('holder2')

function printd() {
    let i = 0
    let t = "Wynik: "
    while (i < parseInt(quan.value)) {
        t = t+n.value+", "
        i++
    }
    h1.innerHTML = t
}

function printmul() {
    let t = "Potęga ", i = 0, x = 1, tem, tem1
    if (parseInt(m.value)>0) {
        while (i < parseInt(m.value)) {
            x = x * parseInt(nu.value)
            i++
        }
    } else {
        while (i > parseInt(m.value)) {
            x = x * parseInt(nu.value)
            i--
        }
        tem = "1/" + x
        x = tem
    }
    t = t+nu.value+"<sup>"+m.value+"</sup> = "+x
    h2.innerHTML = t
}

b1.addEventListener("click", printd)
b2.addEventListener("click", printmul)