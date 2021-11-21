var n = document.getElementById('name')
var proceed = document.getElementById('button')
var t = document.getElementById('text')
var num = document.getElementById('number')

var holder = document.getElementById("holder")

var tempn

function namechange(){
    tempn = n.style.color
    n.style.color = "red"
}

function namereverse(){
    n.style.color = tempn
}

function namebackground(){
    n.style.backgroundColor = t.value
}

function namesize(){
    n.style.fontSize = num.value+"px"
}

function changeseen(){
    holder.innerHTML = "Height: "+parseInt(n.offsetHeight)+"px<br>Width: "+parseInt(n.offsetWidth)+"px<br>Color: "+n.style.color
}

n.addEventListener("mouseover", namechange)
n.addEventListener("mouseout", namereverse)
proceed.addEventListener("click",() => {namebackground(); namesize()})
n.addEventListener("dblclick", changeseen)