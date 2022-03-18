var date = document.getElementById('date');
var hour = document.getElementById('HH');
var minute = document.getElementById('mm');
var second = document.getElementById('ss');

var months = ['Styczeń','Luty','Marzec','Kwiecień','Maj','Czerwiec','Lipiec','Sierpień','Wrzesień','Październik','Listopad','Grudzień'];
var days = ['Poniedziałek','Wtorek','Środa','Czwartek','Piątek','Sobota','Niedziela'];

function showDate() {
    let today = new Date();
    date.innerHTML += days[today.getDay()]+", "+today.getUTCDate()+" "+months[today.getMonth()]+" "+today.getFullYear()+" roku.";
}

function showClock() {
    let today = new Date();
    hour.innerHTML = today.getHours();
    minute.innerHTML = today.getMinutes() < 10 ? "0"+today.getMinutes() : today.getMinutes();
    second.innerHTML = today.getSeconds();
}

window.onload = function(){showDate();showClock();};
setInterval(showClock, 1000);