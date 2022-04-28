var handler1 = document.getElementById("handler1");
var handler2 = document.getElementById("handler2");
var handler3 = document.getElementById("handler3");
var handler4 = document.getElementById("handler4");

function show(table) {
    for (let i = 0; i < table.length; i++) {
        handler1.innerHTML += table[i]
    }; handler1.innerHTML += "<br>";
}

function zad1() {
    let table = new Array(0,1,2,3,4,5,6,7,8,9);
    show(table);
    table.push("10");
    show(table);
    table.unshift("-1");
    show(table);
    table.pop();
    show(table);
    table.shift();
    show(table);
    table.reverse();
    show(table);
    table.sort();
    show(table);
    handler1.innerHTML += "<br><br>";
}

function zad2() {
    let table = new Array(0,1,2,3,4);
    handler2.innerHTML = table[3];
    handler2.innerHTML += "<br><br>";
}

function zad3() {
    let table = new Array();
    for (let i = 0; i < 10; i++) {
        table.push(Math.floor(Math.random()*100)+1);
    }
    for (let i = 0; i < table.length; i++) {
        if (table[i]%3==0) {
            handler3.innerHTML+="<span class='bold'>"+table[i]+"</span>; "
        } else {
            table[i]%5==0?handler3.innerHTML+="<span class='red'>"+table[i]+"</span>; ":handler3.innerHTML+=table[i]+"</span>; "
        }
    }
    handler3.innerHTML += "<br><br>";
}

function zad4() {
    let table1 = new Array(0,1,2);
    let table2 = new Array(3,4,5);
    let table3 = new Array(6,7,8);
    let temp = table1.concat(table2, table3);
    handler4.innerHTML=temp[Math.floor(Math.random()*9)];
}

window.onload = function() {zad1(); zad2(); zad3(); zad4();};