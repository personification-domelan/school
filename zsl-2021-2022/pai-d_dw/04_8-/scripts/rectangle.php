<!DOCTYPE html>
<html lang="pl" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Prostokąt</title>
    </head>
    <body>
        <form method="GET">
            <h1>Prostokąt</h1>
            <input type="text" name="inta" placeholder="Podaj długość boku a"><br><br>
            <input type="text" name="intb" placeholder="Podaj długość boku b"><br><br>
            <input type="submit" name="submit">
        </form>
        <?php
        if(isset($_GET['submit'])){
            if(!empty($_GET['inta']) && !empty($_GET['intb'])){
                $a=str_replace(',','.',$_GET['inta']);
                $b=str_replace(',','.',$_GET['intb']);
                $area=$a*$b;
                echo <<< R
                <br>Pole kwadratu wynosi: $area cm<sup>2</sup>
                R;
            }else{
                echo('<br>'."Wypełnij pola");
            }
        }
        ?>
    </body>
</html>