var a = parseInt(prompt("Podaj lcizbę początkową","1"));
for (let index = 0; index < 5; index++) {
    a = Math.pow(a,"2");
    document.write(a+"<br>");
}