<html>
    <head>
        <meta charset="utf-8">
        <title>Użytkownicy</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h4>Użytkownicy: </h4>
        <?php
            require_once 'connect.php';
            $sql = "SELECT * FROM `users` JOIN `cities` ON users.idcity=cities.idcity ORDER BY users.id";
            $result = $connect->query($sql);
            echo <<< TABLE
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Imię</th>
                        <th>Nazwisko</th>
                        <th>Data Urodzenia</th>
                        <th>Miasto</th>
                        <th></th>
                    </tr>
TABLE;
            while ($user=$result->fetch_assoc()) {
                echo <<< USER
                    <tr>
                        <td>$user[id]</td>
                        <td>$user[name]</td>
                        <td>$user[surname]</td>
                        <td>$user[birthday]</td>
                        <td>$user[city]</td>
                        <td><a href="script.php?userID=$user[id]">Usuń</a></td>
                    </tr>
USER;
            }
            echo "</table>";
        ?>
    </body>
</html>