<?php
    echo PHP_VERSION; //7.4.8
    echo '<br>', 2**10, '<br>';
    $x=10;
    $y=100;
    echo $x<=>$y, "<br>"; //porównanie, potrójny operator porównania

    //równe lub identyczne
    $x=1;
    $y=1.0;
    if($x==$y){
        echo "równe";
    }else{
        echo "różne";
    }

    //sprawdzenie dodatkowo typu danych
    if($x===$y){
        echo "równe";
    }else{
        echo "różne";
    }
?>