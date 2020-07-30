<?php
include 'config/koneksi.php';
$sql=mysql_query("select*from ppdb_info where info_id=1 and aktif=1")or die(mysql_error());  // menampilkan tabel ppbd_info yang info_id=1 dan aktif=1
$row=mysql_fetch_array($sql);

echo "$row[info]";
?>