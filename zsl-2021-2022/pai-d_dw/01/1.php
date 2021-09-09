<?php
echo "text<br>";
echo 'text<br>';
$name="Krystyna";
echo 'Imię: $name<br>';
echo "Imię: $name<br>";

//typy danych

//całkowite
$całkowita=10;
$bin=0b1010; //10
$oct=011; //9
$hex=0x11; //17
echo "$bin<br>$oct<br>$hex<br>";

//zmienne
$e=10.5; //double
echo gettype($e);

//logiczna
$prawda=true;
$fałsz=false; //DO NOT USE POLISH IN CODING. thanks
echo $prawda; //1
echo $fałsz; //nic

//heredoc
echo <<< E
    <hr>Imię: $name<br>ZSŁ<hr>
E;
$text = <<< E
    <hr>Imię: $name<br>ZSŁ<hr>
E;
echo $text;

//nowdoc
echo <<< 'E'
    <hr>Imię: $name<br>ZSŁ<hr>
E;

//konkatenacja
echo "text1"."text2<br>";
echo "Imię: \$name";
?>