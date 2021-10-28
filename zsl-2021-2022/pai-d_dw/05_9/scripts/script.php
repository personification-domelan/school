<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h3>Dane użytkownika</h3>
    <?php
        require_once '../functions/function.php';
        show();
         if(!empty($_POST['name'])){
             echo showName($_POST['name']);
        }
        if(!empty($_POST['name'])&&!empty($_POST['length'])){
            echo stringValidate($_POST['name'],$_POST['length']);
        }
    ?>
</form>
</body>
</html>
