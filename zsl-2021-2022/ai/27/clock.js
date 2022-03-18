var date = document.getElementsByID("date").innerHTML;

var months = ['Styczeń','Luty','Marzec','Kwiecień','Maj','Czerwiec','Lipiec','Sierpień','Wrzesień','Październik','Listopad','Grudzień'];
var days = ['Poniedziałek','Wtorek','Środa','Czwartek','Piątek','Sobota','Niedziela'];
var today = new Date();

function showDate() {
    date += days[today.getDay()]+", "+today.getDay()+" "+today.getMonth()+" "+today.getYear();
}

