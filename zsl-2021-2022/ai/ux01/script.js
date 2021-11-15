var n = document.getElementById('name')
var proceed = document.getElementById('button')
var t = document.getElementById('text')
var num = document.getElementById('number')
var main = document.getElementById('main')

var tempn

function namechange(){
    tempn = n.style.color
    n.style = "color: red"
}

function namereverse(){
    n.style = tempn
}

function namebackground(){
    n.style = "background-color: "+t.value
}

function namesize(){
    n.style = "font-size: "+num.value+"px"
}

function changeseen(){
    main.style = "border: 2px solid red; background-color: green; height: 500px; width: 500px"
}

n.addEventListener("mouseover", namechange)
n.addEventListener("mouseout", namereverse)
proceed.addEventListener("click", namebackground && namesize)
n.addEventListener("dblclick", changeseen)