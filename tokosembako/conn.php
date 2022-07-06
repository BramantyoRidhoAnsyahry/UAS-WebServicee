<?php
$servername = "localhost";
$username = "root";
$password = "";
$databasename = "tokosembako";

$conn = mysqli_connect($servername, $username, $password, $databasename);
if (!$conn) {
    die("koneksi tidak berhasil");
}
?>