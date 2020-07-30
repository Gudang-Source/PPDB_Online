<?php 
error_reporting('E_NONE');
session_start();
$no_peserta	= $_SESSION['no_peserta'];
$nisn		= $_SESSION['nisn'];
?>
<!DOCTYPE html PUBLIC>
<html>
<title>PPDB Online SMKN 1 SUKOHARJO</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="robots" content="index, follow">
<meta name="description" content="">
<meta name="keywords" content="">
<meta http-equiv="Copyright" content="SMKN1SUKOHARJO">
<meta name="author" content="Zaenal Abidin">
<meta http-equiv="imagetoolbar" content="no">
<meta name="language" content="Indonesia">
<meta name="revisit-after" content="7">
<meta name="webcrawlers" content="all">
<meta name="rating" content="general">
<meta name="spiders" content="all">
<link rel="shortcut icon" href="favicon.gif" />
<link type="text/css" href="asset/calendar/themes/le-frog/jquery-ui-1.7.2.custom.css" rel="stylesheet" />
<link type="text/css" href="asset/calendar/themes/le-frog/ui.all.css" rel="stylesheet" />
<script src="js/jquery-1.4.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/custom.js" type="text/javascript"></script>
<script src="js/menu.js" type="text/javascript"></script>
<?php include 'jquery_load.php'; ?>
<?php include_once( 'includes/meta.php'); ?>

</head>
<body>
<!--
	<div id="ppdb_body_wrapper">
	<div id="ppdb_wrapper"> 
-->
	
	<div id="ppdb_header">
	  <div id="site_title">
		 <img src="images/header/logo.png" alt="LOGO" width="300" height="50"  />
	  </div>
	</div>
	<!-- end of header -->
		
	<!-- menu
	<div id="ppdb_menu">
	  <div id="menu">
		<ul class="menu">
			<?php include "menu.php";?>
		</ul>
	  </div>
	</div> 
	<!-- end of menu -->

	<!-- main base --> 

		  <?php include "konten.php" ?>   
	
	<!-- end of main_base 
	</div><!-- end of wrapper
	</div><!-- end of body_wrapper -->
	<div id="copyright"><a href="http://sedotcode.blogspot.com/"></a></div>
	<?php include "config/koneksi.php";  // mengkonekkan dengan database ppdb online
		$sql=mysql_query("select*from ppdb_info where info_id=1 and aktif=1")or die(mysql_error());  // menampilkan tabel ppdb_info yang info_id=1 dan aktif=1
		$row=mysql_fetch_array($sql);
		if($row['aktif']==0){$stl="display:none;";}else{$stl="";}
	?>
	</div>
</body>
</html>
