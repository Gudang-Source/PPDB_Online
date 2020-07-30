<?

include "../../../config/koneksi.php";
$id				= $_POST['id'];
$isi			= $_POST['isi'];
$aktif			= $_POST['aktif'];


$edit = mysql_query("UPDATE ppdb_info SET info='$isi', aktif='$aktif' WHERE info_id='$id'");  // mengedit infor terbaru
if($edit){
	echo "sukses";
}
else{
	echo "<font color='#00FF00'>Data Gagal Disimpan... </font><br>";
}

?>
