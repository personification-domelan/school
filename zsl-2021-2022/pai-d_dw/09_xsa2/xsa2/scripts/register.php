<?php
session_start();
$error=0;

foreach ($_POST as $key => $val) {
    if(empty($val)){$_SESSION['error'] = 'Fill in all fields!'; $error++;}
    //debug
    //echo "$key: $val<br>";
}

//term check
if (!isset($_POST['terms'])) {
    $_SESSION['error'] = 'Agree to terms!'; $error++;
}

//mail match
if ($_POST['mail'] != $_POST['rmail']) {
    $_SESSION['error'] = 'Entered EMAILS do not match!'; $error++;
}

//passwd match
if ($_POST['passwd'] != $_POST['rpasswd']) {
    $_SESSION['error'] = 'Entered PASSWORDS do not match!'; $error++;
}

if ($error != 0) {
    echo "<script>history.back()</script>";
}
?>