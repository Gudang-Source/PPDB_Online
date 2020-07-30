<?php
$hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'ppdb';

// Koneksi dan memilih database di server
mysql_connect($hostname,$username,$password) or die("Koneksi gagal");
mysql_select_db($database) or die("Database tidak bisa dibuka");

// $mysqli = new mysqli("localhost", "root", "", "ppdb");
// // $result = $mysqli->query("SELECT * FROM mahasiswa");
// // $row = $result->fetch_assoc();

?>
