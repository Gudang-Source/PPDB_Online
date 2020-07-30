<?php 
error_reporting(0);
session_start();
$sess_id	= $_SESSION['admin_id'];
$sess_name	= $_SESSION['name'];
if (isset($sess_id) and (isset($sess_name)))
{
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<title>HALAMAN ADMINISTRATOR SMA NEGERI 1 SUKOHARJO</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="robots" content="index, follow">
<meta name="description" content="">
<meta name="keywords" content="">
<meta http-equiv="Copyright" content="SMANSASU">
<meta name="author" content="Sarwo Prayitno">
<meta http-equiv="imagetoolbar" content="no">
<meta name="language" content="Indonesia">
<meta name="revisit-after" content="7">
<meta name="webcrawlers" content="all">
<meta name="rating" content="general">
<meta name="spiders" content="all">

<link rel="shortcut icon" href="favicon.gif" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link type="text/css" href="asset/calendar/themes/le-frog/jquery-ui-1.7.2.custom.css" rel="stylesheet" />
<link type="text/css" href="asset/calendar/themes/le-frog/ui.all.css" rel="stylesheet" />

<script src="js/jquery-1.4.js" type="text/javascript"></script>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/superfish.js" type="text/javascript"></script>
<script src="js/tabs.js" type="text/javascript"></script>

<?php  include 'jquery_load.php';?>
</head>

<body onload="startclock()">
<div id="ppdb_wrapper">
 <div id="ppdb_header">
   <div id="site_title">
     <h1>
     <strong></strong><br /><br />
     </h1>
   </div>
 </div>
    
 <div id="ppdb_menu">
   <ul class="nav">
		<li class="left"></li>
		<li><a href="?module=home">Home</a></li>
		<?if($_SESSION['name']==0){
		echo"<li><a href='#'>Setting</a>
			<ul >
				<li><a href='?module=modul'>Manage Menu</a></li>
				<li ><a href='?module=user'>Manage User</a></li>
				<li><a href='?module=info'>Informasi</a></li>
			</ul>
		</li>";
		}?>
		<li><a href="#">Adm PDB</a>
			<ul>
				<li><a href="?module=biodata">Biodata Peserta</a></li>
				<li><a href="?module=nilai">Nilai Rapor Peserta</a></li>
			</ul>
	  </li>
		<li><a href="#">Cetak</a>
			<ul>
				<li><a href="?module=c_bidata">Cetak Biodata Peserta</a></li>
				<li><a href="?module=c_nilai">Cetak Nilai Peserta</a></li>
			</ul>
	  </li>
		<li><a href="?module=kontak">Kontak</a></li>
		<li><a href='?module=logout'>Logout</a></li>
		<li class="sep">&nbsp;</li>
		<li class="right">&nbsp;</li>
		
	</ul>
 </div>
<div id="msg" align="center"></div>    
 <div id="ppdb_content_wrapper">
  <div id="ppdb_content_base">
   <div id="ppdb_content">
   <div class="col_w270">
   <?include "konten.php";?>
   </div>
   </div>    
  </div>
 <div id="ppdb_content_bottom"></div> 
 <div class="cleaner"></div>
 </div>
    
 <div id="ppdb_footer">
  Copyleft © 2017 SMA Negeri 1 Sukoharjo share by <a href="http://zanybear.com/">Zaenal Abidin</a>
 </div>

</div>

</body>
</html>
<?php 
}	
else
include("index.php");
exit;
?>
