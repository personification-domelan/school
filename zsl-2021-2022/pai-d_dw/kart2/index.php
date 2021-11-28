<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $connect = new mysqli('localhost', 'root', '', 'car');
        $sql = 'SELECT * FROM CAR';
        $result = $connect->query($sql);
        echo <<< RR
            <table>
                <tr>
                    <th>id</th>
                    <th>Marka</th>
                    <th>Model</th>
                </tr>
RR;    

        while ($data = $result->fetch_assoc()) {
            echo <<< EE
                <tr>
                    <td>$data[id]</td>
                    <td>$data[Marka]</td>
                    <td>$data[Model]</td>
                </tr>
EE;
        }
        echo "</table><hr>";
        echo <<< TT
        <form action="">
            <input type="text" name="check">
            <input type="submit" value="Wyszukaj">
        </form>
TT;
        if (isset($_GET['check'])) {
            $check = $_GET['check'];
            $sql2 = "SELECT * FROM CAR WHERE id = $check";
            $result2 = $connect->query($sql2);
            $data2 = $result2->fetch_assoc();
            echo <<< WW
            <table>
                <tr>    
                    <td>$data2[id]</td>
                    <td>$data2[Marka]</td>
                    <td>$data2[Model]</td>
                </tr>
            </table>
WW;
        }
    ?>
</body>
</html>