<?php
$id		= @$_GET['id'];
$act 	= @$_GET['act'];
if ($act=='v_edit'){
		$v = $_GET['v'];
		if($v == '0'){
			$v = '1';
		}
		else{
			$v = '0';
		}
	mysql_query("UPDATE ppdb_adm_siswa SET sts_verifikasi = '$v' WHERE adm_id='$id'");  // mengedit tabel ppdb_adm_siswa berdasar verivikasi
	include 'js/back.js';
}
elseif ($act=='s_edit'){
		$s = $_GET['s'];
		if($s == '0'){
			$s = '1';
		}
		else{
			$s = '0';
		}
	mysql_query("UPDATE ppdb_adm_siswa SET sts_seleksi = '$s' WHERE adm_id='$id'"); // mengedit tabel ppdb_adm_siswa berdasar hasil seleksi
	include "js/back.js";
}
elseif ($act=='del'){
	// menghapus tabel 5 mapel dan biodata dan adm_siswa berdasar nisn
	mysql_query("DELETE FROM ppdb_bind WHERE nisn='$id'");
	mysql_query("DELETE FROM ppdb_bing WHERE nisn='$id'");
	mysql_query("DELETE FROM ppdb_ipa WHERE nisn='$id'");
	mysql_query("DELETE FROM ppdb_ips WHERE nisn='$id'");
	mysql_query("DELETE FROM ppdb_mat WHERE nisn='$id'");
	mysql_query("DELETE FROM ppdb_biodata WHERE nisn='$id'");
	mysql_query("DELETE FROM ppdb_adm_siswa WHERE nisn='$id'");
	include 'js/back.js';
}
?>