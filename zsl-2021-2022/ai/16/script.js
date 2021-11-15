var n = document.getElementById('n')
var quan = document.getElementById('quan')
var sub = document.getElementById('sub')
var hold = decument.getElementById('holder')

sub.addEventListener("click", printd)

function printd() {
    let i = 0
    let t = ""
    while (i < quan.value) {
        t = t + n.value
    }
    hold.innerHTML = t
}