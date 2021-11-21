<?php
require_once 'connect.php';
if (!empty($_GET['userID'])) {
    $sql = "DELETE FROM `users` WHERE `users`.`id` = $_GET[userID]";
    $connect->query($sql);
    echo $connect->affected_rows;
}
//header('location:12.php')
?>