<?php 
    $link = (mysqli_connect("localhost", "root", "", "bd_index"));
    if (!$link) {
        die("Connection failed: " . mysqli_connect_error());
    }
?>