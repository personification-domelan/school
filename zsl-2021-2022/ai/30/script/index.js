var table = new Array(1,2,3,4,5,6,7,8,9,10);
var handler = document.getElementById("handler");

function show() {
    for (var i = 0; i < table.length; i++) {
        handler.innerHTML += table[i]
    }; handler.innerHTML += "\n";
}

show();
table.push(11);
show();
table.unshift(0);
show();
table.pop();
show();
