<?php 
$tekst = <<<T
zsl - Zespół
Szkół
Łączności
T;
echo $tekst,'<br>';
echo nl2br($tekst),'<hr>';

$name="jaNuSz";
//zmiana na małe
echo strtolower($name),'<br>';
//zmiana na duże
echo strtoupper($name),'<hr>';

$data="jaNUsz koWALski";
//pierwsza na duże
echo ucfirst($data),'<br>';
//każda pierwsza na duże
echo ucwords($data),'<hr>';

$lorem="Excepteur ea esse nostrud nostrud exercitation. Non irure do laborum elit qui nisi exercitation commodo deserunt esse in qui ex. Culpa duis veniam cupidatat nulla dolore occaecat. Voluptate eu ut commodo sunt nostrud.";
echo "$lorem<hr>";
$col=wordwrap($lorem,40,'<br>');
echo $col;

//czyszczenie zawrtości buffora
ob_clean();

//usuwanie białych znaków
$name="Anna";
$name1="  Anna ";
echo "Długość \$name: ",strlen($name),'<br>';//4
echo "Długość \$name1: ",strlen($name1),'<br>';//7
echo strlen(ltrim($name1));//5
echo strlen(rtrim($name1));//6
echo strlen(trim($name1));//4

//przeszukiwanie ciągów
echo strstr("janusz@gmail.com","@");//@gmail.com
echo stristr("janusz@gmail.com","G");//gmail.com
echo stristr("janusz@gmail.com","64");//@gmail.com

$name="Janusz";
echo substr($name,2);//nusz
echo substr($name,2,3);//nus
echo substr($name,-2);//sz
echo substr($name,-2,1);//s
echo substr(strstr("janusz@gmail.com",));
?>