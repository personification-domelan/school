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
    if (isset($Durlik_GET['info'])){
        echo '<h1>Zafektowano '.$Durlik_GET['info'].' rekordów wariacie!</h1>';
    }
    ?>
    <table>
        <tr>
            <th>ID</th>
            <th>Nazwa Instrumentu</th>
            <th>Kolor instrumentu</th>
            <th>Data dodania</th>
            <th>Aktualizacja</th>

        </tr>
        <?php
        $Durlikconnect = new mysqli("192.168.8.106", "root", "", "instrumenty");
        $Durliksql = 'SELECT * FROM `instrument` JOIN `kolor` ON instrument.Kolor_Id=kolor.Kolor_Id';
        $Durlikresult = $Durlikconnect->query($Durliksql);

        while ($Durlikrow = $Durlikresult->fetch_assoc()) {
            echo <<< AA
    <tr>
    <td>$Durlikrow[Instrument_id]</td>
    <td>$Durlikrow[Nazwa]</td>
    <td>$Durlikrow[kolor]</td>
    <td>$Durlikrow[Data_doania]</td>
    <td><a href="2.php?alter_id=$Durlikrow[Instrument_id]&alter_name=$Durlikrow[Nazwa]&alter_kolor=$Durlikrow[kolor]">Edytuj rekord $Durlikrow[Nazwa]</a></td>
    </tr>
AA;
    }
?>
</body>
</html>