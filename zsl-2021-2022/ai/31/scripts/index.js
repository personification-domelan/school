var handler = document.getElementById("handler");

var img = new Array("<img src='img/icons/0.ico' alt='0.ico'>", "<img src='img/icons/1.ico' alt='1.ico'>", "<img src='img/icons/2.ico' alt='2.ico'>", "<img src='img/icons/3.ico' alt='3.ico'>", "<img src='img/icons/4.ico' alt='4.ico'>", "<img src='img/icons/5.ico' alt='5.ico'>", "<img src='img/icons/6.ico' alt='6.ico'>", "<img src='img/icons/7.ico' alt='7.ico'>", "<img src='img/icons/8.ico' alt='8.ico'>", "<img src='img/icons/9.ico' alt='9.ico'>");

function iconClock() {
    let date = new Date();
    let hours = date.getHours();
    let minutes = date.getMinutes();
    let seconds = date.getSeconds();
    handler.innerHTML = (hours>=10?(img[1]+img[hours-10]):(img[0]+img[hours]))+" : "+(minutes>=10?(img[Math.floor(minutes/10)%10]+img[minutes%10]):(img[0]+img[minutes]))+" : "+(seconds>=10?(img[Math.floor(seconds/10)%10]+img[seconds%10]):(img[0]+img[seconds]));
}

window.onload = function() {iconClock();};
window.setInterval(iconClock, 1000);