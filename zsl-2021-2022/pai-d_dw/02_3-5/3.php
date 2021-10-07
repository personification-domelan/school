<?php
/*
postunkrementacja $x++
preinkrementacja ++$x
postdekrementacja $x--
predekrementacja --$x
*/
$x=1;
echo '<hr>', $x; //1
echo '<br>', ++$x; //2
echo '<br>', $x++; //2
echo '<br>', ++$x, '<hr>'; //

$x=1;
echo $x, '<br>'; //1
$x=$x++;
echo $x, '<br>'; //1
$x=++$x;
echo $x, '<br>'; //2
$y=++$x;
echo $x, ",", $y, '<br>'; //3 3
$y=$x++;
echo $x, ",", $y, '<br>'; //4 3

?>