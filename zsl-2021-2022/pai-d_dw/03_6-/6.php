<!DOCTYPE html>
<html lang="pl" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Form</title>
    </head>
    <body>
        <form>

            <input type="text" name="name" placeholder="Imię"><br><br>
            <input type="text" name="surname" placeholder="Nazwisko"><br><br>
            <input type="submit" value="Zatwierdź dane">
        </form>
        <?php
        if (isset($_GET['name'])){
            echo $_GET['name'];
        }
        ?>
    </body>
</html>