<!DOCTYPE html>
<html lang="pl" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Form</title>
    </head>
    <body>
        <form action="7.php" method="GET">
            <input type="number" name="years" placeholder="Wiek" require><br><br>
            <input type="text" name="name" placeholder="Imię" require><br><br>
            <input type="submit" value="Zatwierdź dane">
        </form>
        <?php
        if (!empty($_GET['name']) && !empty($_GET['years'])){
            echo <<<E
                Imię i nazwisko: 
                $_GET[name] $_GET[years]
            E;
        }else{
            echo "Wypełnij wyszstkie pola";
        }
        ?>
    </body>
</html>