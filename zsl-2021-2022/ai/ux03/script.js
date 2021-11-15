var holder1 = document.getElementById('holder1')
var holder2 = document.getElementById('holder2')

var th1 = holder1.innerHTML

let n = prompt("Podaj Imię")
let sn = prompt("Podaj Nazwisko")
holder1.innerHTML = th1+"<br>"+n+"<br>"+sn

while(true){var a = parseInt(prompt("Podaj 'a' do ax+b=0"));if(a>0){break};alert("BŁĘDNE DANE. a nie może być mniejsze od 0")}
let b = parseInt(prompt("Podaj 'b' do ax+b=0"))
let x = parseFloat((0-b)/a)
holder2.innerHTML = "Wynik ax+b=0 dla: a="+a+" i b="+b+" jest równy: x="+x