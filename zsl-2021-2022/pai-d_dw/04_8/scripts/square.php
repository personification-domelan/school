<!DOCTYPE html>
<html lang="pl" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>kwadrat</title>
    </head>
    <body>
        <form method="GET">
            <h1>Kwadrat</h1>
            <input type="text" name="inta" placeholder="Podaj długość boku a"><br><br>
            <input type="submit" name="submit" value="Oblicz">
        </form>
        <?php
        if(isset($_GET['submit'])){
            if(!empty($_GET['inta'])){
                $a=str_replace(',','.',$_GET['inta']);
                $area=$a**2;
                $circus=4*$a;
                echo <<< R
                <br>Pole kwadratu wynosi: $area cm<sup>2</sup>
                <br>Obwód kwadratu wynosi: $circus cm
                R;
            }else{
                echo('<br>'."Wypełnij pole");
            }
        }
        ?>
    </body>
</html>