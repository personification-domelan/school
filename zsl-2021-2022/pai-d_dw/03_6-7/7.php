<!DOCTYPE html>
<html lang="pl" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Data</title>
    </head>
    <body>
        <?php
        $name=ucwords(strtolower($_GET['name']));
        echo <<<E
        Wiek: $_GET[years]<br>
        Imię: $name
        E;
        ?>
    </body>
</html>