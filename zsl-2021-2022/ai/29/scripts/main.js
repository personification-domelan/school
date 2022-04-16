var Name = document.getElementById("name");
var surname = document.getElementById("surname");
var email = document.getElementById("email");
var service = document.getElementById("service");
var copy = document.getElementById("copy");

var resetButton = document.getElementById("reset");
var submitButton = document.getElementById("submit");

var handler = document.getElementById("handler");

var services = ["inne","naprawa komputera","odzyskiwanie danych","problemy z oprogramowaniem","konfiguracja sieci LAN"];

function clear() {
    Name.value = "";
    surname.value = "";
    email.value = "";
    service.selectedIndex = 0;
    copy.checked = false;
}

function proceed() {
    handler.innerHTML = Name.value+" "+surname.value+"<br>"+email.value+"<br>Usługa:"+((0<=service.value&&service.value<=4)?services[service.value]:"NIE WYBRANO USŁUGI")+"<br>"+(copy.checked?"Chcesz otrzymać kopię elektronicznie":"Nie chcesz otrzymać kopii elektronicznej");
}

resetButton.addEventListener("click", function() {clear();});
submitButton.addEventListener("click", function() {
    if(Name.value!=""&&surname.value!=""&&email.value!="") {proceed();} else {alert("Wypełnij wszystkie pola tekstowe.");};
});