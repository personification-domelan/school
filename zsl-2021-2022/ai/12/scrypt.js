var a = 0;
var b = 1;
var s = 1;
do {
    a = parseInt(prompt("Podaj liczbę","1"));
    if (a < 0) {
        a = 1;
    };
    b = b * a;
    s++;
    document.write("l"+s+" * ");
} while (a > 0);
document.write(" = "+b+".");