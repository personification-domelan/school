var mark_resposne = document.getElementById('mark_resposne');
var mark = document.getElementById('mark');

function react() {
    let text = 'Otrzymałem ocenę: <span style="';
    if (mark.value > 4) {
            text += 'color: green; font-weight: bold">'+mark.value+'</span>';
    } else if (mark.value > 2) {
            text += 'color: blue">'+mark.value+'</span>';
    } else {
            text +='color: red">'+mark.value+'</span>';
    }
    mark_resposne.innerHTML = text;
}

mark.addEventListener('change', react);