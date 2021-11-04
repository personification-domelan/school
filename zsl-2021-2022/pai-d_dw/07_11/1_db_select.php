<html>
    <head>
        <meta charset="utf-8">
        <title>Użytkownicy</title>
    </head>
    <body>
        <h4>Użytkownicy: </h4>
        <?php
            $connect = new mysqli("localhost", "root","" ,"zsl_3GI2T_g1");
            $sql = "SELECT * FROM `users`";
            $result = $connect->query($sql);
            //$user=$result->fetch_assoc();
            //print_r($user);
            while ($user=$result->fetch_assoc()) {
                echo <<< USER
                    Id: $user[id]<br>
                    Imię i nazwisko: $user[name] $user[surname]<br>
                    Data urodzenia: $user[birthday]<hr>
                USER;
            }
        ?>
    </body>
</html>