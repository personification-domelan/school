/*alert("Imię");
confirm("Nazwisko");
let clas = prompt("Podaj klasę:","3GI2T");
alert(clas);
document.write("Wchodzę do klasy: "+clas);*/
var first = parseInt(prompt("Wprowadź pierwszą liczbe:","0"));
var secound = parseInt(prompt("Wprowadź drugą liczbę:","0"));
var minus = first - secound;
document.write("Wynik odejmowania liczby: "+first+" i liczby: "+secound+" wynosi: "+minus+"<br>");
var plus = first + secound;
document.write("Wynik dodawania liczby: "+first+" i liczby: "+secound+" wynosi: "+plus+"<br>");
var multiply = first * secound;
document.write("Wynik mnożenia liczby: "+first+" i liczby: "+secound+" wynosi: "+multiply+"<br>");
if(secound == 0){
    document.write("NIE DZIEL PRZEZ 0")
}else{
    var divide = first / secound;
    document.write("Wynik dzielenia liczby: "+first+" i liczby: "+secound+" wynosi: "+divide+"<br>");
}
var third = parseInt(prompt("Wprowadź trzecią liczbę:","0"));
if(first>secound+third){
    document.write("Z tych długości nie utworzysz trójkąta<br>");
}else if(secound>first+third){
    document.write("Z tych długości nie utworzysz trójkąta<br>");
}else if(third>first+secound){
    document.write("Z tych długości nie utworzysz trójkąta<br>");
}else{
    document.write("Z tych długości utworzysz trójkąt<br>");
}
