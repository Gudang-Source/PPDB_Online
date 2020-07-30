<?
session_start();
include '../../../config/koneksi.php';

$nama		= $_POST['nama'];
$email		= $_POST['email'];
$subjek		= $_POST['subjek'];
$pesan		= $_POST['pesan'];
$date 		= date('Y-m-d');

if($_POST['kode']==$_SESSION['captcha_session']){
	
	$input = mysql_query("INSERT INTO `ppdb_kontak` ( `nama` , `email` , `subjek` , `pesan` , `tggl` , `aktif` ) 
						VALUES ( '$nama', '$email', '$subjek', '$pesan', '$date', '1')"); // menyisipkan data ke tabel ppdb_kontak
	
	if($input){
		echo "berhasil";
	}
	else{
		echo "<font color='#00FF00'>Data Gagal Disimpan...</font>";
	}
}
else{
	echo "<font color='#FF0000'>Kode captcha yang Anda Masukan Salah</font>";
}

?>
