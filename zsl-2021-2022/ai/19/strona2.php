<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>POTĘGOWANIE</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header id="header">
        <img id="baner" src="baner.jpg" alt="baner.jpg">
    </header>
    <main id="main">
        <div id="side">
            <h2>Menu</h2>
            <ul>
                <li><a href="strona1.html">proste działania</a></li>
                <li><a href="strona2.php">potęgowanie</a></li>
            </ul>
        </div>
        <div id="main">
            <h1>POTĘGOWANIE</h1>
            <form action="strona2.php" method="get">
                <div>
                    <label for="l3">Podaj podstawę potęgi:</label>
                    <input type="text" name="l3" id="l3">
                </div>
                <div>
                    <label for="l4">Podaj dodatni, całkowity wykładnik potęgi:</label>
                    <input type="text" name="l4" id="l4">
                </div>
                <div id="buttons">
                    <input type="submit" name="powering" value="POTĘGOWANIE">
                </div>
            </form>
            <?php
            $l3 = $_GET['l3'];
            $l4 = $_GET['l4'];
            if (isset($_GET['powering'])) {
                if ((empty($l3) && $l3 != 0) || (empty($l4) && $l4 != 0)) {
                    echo "Wpisz podstawę i wykładnik potęgi.";
                } else {
                    if ($l4 > 0) {
                        $result = $l3**$l4;
                        echo "Wynik działania wynosi: ".$result;
                    } else if ($l4 == 0) {
                        echo "Wynik działania wynosi: 1";    
                    } else {
                        echo "Wykładnik potęgi musi być dodatni.";
                    };
                };
            };
            ?>
        </div>
    </main>
    <script src="script.js"></script>
</body>
</html>