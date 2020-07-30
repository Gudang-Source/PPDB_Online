<?
$id		= @$_GET['id'];
$act 	= @$_GET['act'];
if ($act=='enb'){
	$b = $_GET['b'];
	if($b == '0'){
		$b = '1';
	}
	else{
		$b = '0';
	}
	mysql_query("UPDATE ppdb_admin SET isenable = '$b' WHERE admin_id='$id'");  // mengedit apakah ppbd admin isenable
	include 'js/back.js';
}

elseif ($act=='del'){
		mysql_query("DELETE FROM ppdb_admin WHERE admin_id='$id'");  // hapus admin
		include 'js/back.js';
}
?>