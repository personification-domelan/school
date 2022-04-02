var coffeeWeight = document.getElementById("coffeeWeight");
var coffeeNumber = document.getElementById("coffeeNumber");
var coffee = {1:{name:"Kawa palona Arabica", value:5}, 2:{name:"Kawa palona Robusta",value:7}, 3:{name:"Kawa bezkofeinowa",value:6}};

var handler = document.getElementById("handler");
var button = document.getElementById("button");

function calcValue() {
    if (coffeeNumber.value > 0 && coffeeNumber.value < 4) {
        let tempvalue = coffee[coffeeNumber.value].value;
        handler.innerHTML = "Zamówiono: "+coffee[coffeeNumber.value].name+"\nKoszt zamówienia wynosi: "+(tempvalue*coffeeWeight.value)+" zł.";
    } else {handler.innerHTML = "BRAK PRODUKTU W BAZIE\nKoszt zamówienia wynosi: 0 zł.";}
}

button.addEventListener("click", function(){calcValue();});