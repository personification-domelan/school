<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="">
        <?php 
        if (isset($_GET['alter_id'])) {
            $Durlikvar = $_GET['alter_id'];
            $Durlikconnect = new mysqli("192.168.8.106", "root", "", "instrumenty");
            $Durliksql = "SELECT * FROM `instrument` JOIN `kolor` ON instrument.Kolor_Id=kolor.Kolor_Id where instrument.Instrument_id = $Durlikvar";
            $Durlikresult = $Durlikconnect->query($Durliksql);
            while ($Durlikrow = $Durlikresult->fetch_assoc()) {
                echo <<< BB
                <input type="text" name="name" id="name" value=$Durlikrow[Instrument_id]>
                <input list="kolors" name="kolor" id="kolor">
                
                <datalist id="kolors">
                    <option value="red">
                    <option value="green">
                    <option value="blue">
                    <option value="black">
                    <option value="white">
                </datalist>
                BB;
            }
        } 
        echo '<input type="submit" value="Edytuj">';
        echo "</form>";
        ?>
</body>
</html>