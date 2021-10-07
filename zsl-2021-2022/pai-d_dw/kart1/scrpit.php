<?php
$a = $_GET['bok'];
$h = $_GET['height'];
if (!empty($a)&&!empty($h)) {
    str_replace(',','.',$a);
    str_replace(',','.',$h);
    $pole = ($a * $h)/2;
    echo bcdiv($pole,1,2).' cm<sup>2</sup>';
} else {
    echo "UZUPEŁNIJ DANE";
}