<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Free HTML Starter Templates and Themes for Bootstrap - Up to date for Bootstrap 3! An even faster way to develop websites in Bootstrap!">

<?php include_once( 'includes/meta.php'); ?>
</head>

<body>
<?php include_once( 'includes/nav.php'); ?>
<!-- Page content -->
<div class="container">
      <div class="row">
        <div class="col-lg-12">
          <h1 class="page-header">Form Kirim Pesan</h1>
          <ol class="breadcrumb">
            <li><a href="index.php">Home</a></li>
            <li class="active">Bantuan</li>
          </ol>
        </div>
        <div class="col-lg-12">
        <?php echo "<b>maaf, server masih dalam tahap perbaikan !!!</b>"; ?>
	<form class="navbar-form navbar-center" method="POST" action="#" id="kontak" name="kontak">
	<table width="100%" border="0" align="center">
	  <tr>
		<td width="80">Nama</td>
		<td width="5">:</td>
		<td width="515" colspan="2"><input type="text" class="form-control" name="nama" id="nama" style="width: 250px"/></td>
	  </tr>
	  <tr>
	  <td><br></td>
	  </tr>
	  <tr>
		<td>Email</td>
		<td>:</td>
		<td colspan="2"><input type="text" class="form-control" name="email" id="email" style="width: 250px"/></td>
	  </tr>
	  <tr>
	  <td><br></td>
	  </tr>
	  <tr>		
	    <td>Subjek</td>
        <td>:</td>
	    <td colspan="2"><input type="text" class="form-control" name="subjek" id="subjek" style="width: 250px"/></td>
	  </tr>
	  <tr>
	  <td><br></td>
	  </tr>
	  <tr>
		<td valign="top">Pesan</td>
		<td valign="top">:</td>
		<td colspan="2">
		<textarea name="pesan" class="form-control" id="pesan" style="width: 400px; height: 100px;"></textarea>		
		</td>
	  </tr>
	  <tr>
	  <td><br></td>
	  </tr>
	  <tr>
		<td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td><img src='captcha.php' class="img-rounded"></td>
	    <td>&nbsp;</td>
     </tr>
     <tr>
	  <td><br></td>
	  </tr>
	  <tr>
	    <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>(Masukkan 6 kode diatas)</td>
        <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><input name="kode" class="form-control" type="text" id="kode" style="width: 165px;" /></td>
        <td>&nbsp;</td>
	  </tr>
	  <tr>
	  <td><br></td>
	  </tr>
	  <tr>
	  	  <td>&nbsp;</td>
        <td><br></br></td>
	     <td colspan="4"><button type="submit" id="submit" name="submit" class="btn btn-primary">Kirim</button>
	<button type="reset" name="Reset" class="btn btn-primary">Batal</button></td>
      </tr>
	</table>
</form>
</div>
</div>
</div>
<hr>
<?php include_once( 'includes/footer.php'); ?>
<?php include_once( 'includes/js.php'); ?>
</body>
</html>
