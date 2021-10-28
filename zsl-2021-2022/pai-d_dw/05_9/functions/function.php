<?php
    function show(){
        echo "Funkcja SHOW<br>";
    }
    function showName($name){
        $name = ucfirst($name);
        return "Imię przed zmianami: ".$name."<hr>";
    }
    function stringValidate($name, $length){
        $name = ucfirst(strtolower(trim($name)));
        $name = str_replace(" ","",$name);
        $name= substr($name,0,$length);
        return "Imię po zmianach: ".$name;
    }
?>
