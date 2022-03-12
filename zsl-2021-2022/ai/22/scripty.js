var b = document.getElementById("check")


var placeholder = document.getElementById("placeholder")

function check() {
    let pass = document.getElementById("password").value;

    if (pass.length > 6 && (/\d/.test(pass))) {
        placeholder.innerHTML = "DOBRE";
        placeholder.style.color = "green";
    } else if (pass.length > 3 && (/\d/.test(pass))) {
        placeholder.innerHTML = "ŚREDNIE";
        placeholder.style.color = "blue";
    } else if (pass.length > 0) {
        placeholder.innerHTML = "SŁABE";
        placeholder.style.color = "#ddce00";
    } else {
        placeholder.innerHTML = "WPISZ HASŁO!";
        placeholder.style.color = "red";
    }
}

b.addEventListener("click", check)