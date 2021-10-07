var x = parseInt(prompt("Podaj liczbe:"));
if (x >= 0) {
    document.write("FOR: ");
    x++;
    for (let index = 0; index < x;) {
        document.write(index); index++;
        if (index != x) {document.write(", ")} else {document.write(".<br>")};
    };
    let index = 0;
    document.write("WHILE: ");
    while (index < x) {
        document.write(index); index++;
        if (index != x) {document.write(", ")} else {document.write(".<br>")};
    };
    index = 0;
    document.write("DO-WHILE: ");
    do {document.write(index); index++;
        if (index != x) {document.write(", ")} else {document.write(".<br>")};
    } while (index < x);
} else {
    alert("Podaj liczbe nieujemną!");
}