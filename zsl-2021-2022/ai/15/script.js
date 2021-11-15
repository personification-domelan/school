var f = document.getElementById("fir")
var s = document.getElementById("sec")
var th = document.getElementById("thr")

const month = new Array(); month[0] = "Styczeń"; month[1] = "Luty"; month[2] = "Marzec"; month[3] = "Kwiecień"; month[4] = "Maj"; month[5] = "Czerwiec"; month[6] = "Lipiec"; month[7] = "Sierpień"; month[8] = "Wrzesień"; month[9] = "Październik"; month[10] = "Listopad"; month[11] = "Grudzień";
const day = new Array(7); day[0] = "Niedziela"; day[1] = "Poniedziałek"; day[2] = "Wtorek"; day[3] = "Środa"; day[4] = "Czwartek"; day[5] = "Piątek"; day[6] = "Sobota";

var ss, mm, hh, dd, DD, MM, YY

generateDate()
var repeatgeneratedate = setInterval(generateDate, 1000)
var repeatshowurl = setInterval(showuhr, 1000)

function generateDate() {
    const d = new Date()

    ss = d.getSeconds(); mm = d.getMinutes(); hh = d.getHours(); dd = d.getDate(); DD = d.getDay(); MM = d.getMonth(); YY = d.getFullYear()
    
    if (hh<=9) {hh="0"+hh}; if (mm<=9) {mm="0"+mm}; if (ss<=9) {ss="0"+ss}
}

if (f) {show3l()}
if (s) {showdate()}
if (th) {showuhr()}

function show3l() {
    let t
    t = "Dzień: "+dd+"<br>"
    t = t + "Miesiąc: "+MM+"<br>"
    t = t + "Rok: "+YY
    f.innerHTML = t
}

function showdate() {
    let t 
    t = dd+" "+month[MM]+" "+YY+" roku"
    s.innerHTML = t
}

function showuhr() {
    let t
    t = "<span style='color: red; font-size: 1.640625rem'>"+DD+" "+month[MM]+" "+YY+"r., "+day[DD]+" "+hh+":"+mm+":"+ss+"</span>"
    th.innerHTML = t
}