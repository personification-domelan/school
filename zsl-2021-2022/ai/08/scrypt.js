var sum = 0;
var i = 1;
do {
    var x = parseInt(prompt("Podaj liczbe:","0"));
    sum = sum + x;
    document.write(i+". "+x+"<br>");
    i++;
} while (sum < 50);
document.write("Suma ^^^ jest równa: "+sum+".<br>");