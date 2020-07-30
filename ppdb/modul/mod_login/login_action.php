<?php
session_start();

include '../../config/koneksi.php';
include '../../includes/meta.php';

$no_peserta		= $_POST['no_peserta'];
$password		= $_POST['password'];

$result = mysql_query("select count(*) as hasil from ppdb_adm_siswa where no_peserta='$no_peserta' and password=md5('$password')") or die (mysql_error());  // menampilkan no_peserta dan passwor otomatis dari tabel ppdb_adm_siswa
$row = mysql_fetch_array($result);

if ($row[0]=="1")
{
	$query_status = mysql_query("select * from ppdb_adm_siswa where no_peserta='$no_peserta'")or die (mysql_error()); // mengambil tabel ppdb sesuai no_peserta 
	$row_status=mysql_fetch_array($query_status);
	$nisn = $row_status['nisn'];
	$no_peserta = $row_status['no_peserta'];
	
	$_SESSION['no_peserta'] = $no_peserta;
	$_SESSION['nisn'] = $nisn;

	mysql_query("update ppdb_adm_siswa set status='1' where no_peserta='$no_peserta'") or die (mysql_error());  // memperbarui tabel ppdb_adm_siswa yang di genti berstatus 1 dg no_peserta
	
	
	echo "sukses";
	//echo "<meta http-equiv='refresh' content='1; http://localhost/ppdbonline/ppdb/media.php?module=home' />"; 
	


}
else
{
	session_destroy();
	echo "<div class='alert alert-error'>Login Gagal Ulangi Kembali</div>";

}

?>
