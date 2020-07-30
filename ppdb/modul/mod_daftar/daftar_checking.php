<?php
include '../../config/koneksi.php';

if($_POST['nisn']){
	$sql = mysql_query("select * from ppdb_adm_siswa where nisn='$_POST[nisn]'");  // menampilkan tabel ppdb_adm_siswa berdasar nisn
	$ketemu = mysql_num_rows($sql); 
	echo $ketemu;
}
?>
