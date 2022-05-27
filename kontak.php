<?php  
	include 'config/class.php';
	$pinstansi = $instansi->detail();
?>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Hubungi Kami | <?= $pinstansi['nama_instansi'] ?></title>
	<meta charset="UTF-8">
	<meta name="description" content=" Divisima | eCommerce Template">
	<meta name="keywords" content="divisima, eCommerce, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="media/upload-instansi/<?= $pinstansi['logo_instansi'] ?>" rel="shortcut icon"/>
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/flaticon.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>
	<link rel="stylesheet" href="css/jquery-ui.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/style.css"/>
</head>
<body>

	<div id="preloder">
		<div class="loader"></div>
	</div>

	<?php include 'header.php'; ?>

	<div class="page-top-info">
		<div class="container">
			<h4>Hubungi Kami</h4>
			<div class="site-pagination">
				<a href="">Home</a> /
				<a href="">Hubungi Kami</a>
			</div>
		</div>
	</div>

	<section class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 contact-info">
					<h3>Informasi Kontak</h3>
					<p><i class="fa fa-map-marker"></i> <?= $pinstansi['alamat_instansi'] ?></p>
					<p><i class="fa fa-phone"></i> <?= $pinstansi['telepon_instansi'] ?></p>
					<p><i class="fa fa-envelope"></i> <?= $pinstansi['email_instansi'] ?></p>
					<br>
					<br>
					<!-- kritik saran -->
					<form method="post" enctype="multipart/form-data">
					<h3>Kritik dan Saran</h3>
					
					<div class="form-group col-md-13">
						<label for="">Nama</label>
						<input type="text" name="nama_pesan" class="form-control" placeholder="Nama" required="">
					</div>
					<div class="form-group col-md-13">
						<label for="">Email</label>
						<input type="text" name="email_pesan" class="form-control" placeholder="Email" required="">
					</div>
					<div class="form-group col-md-13">
						<label for="">Telepon</label>
						<input type="text" name="kontak_pesan" class="form-control" placeholder="Telepon" required="">
					</div>
					<div class="form-group col-md-13">
						<label for="">Pesan</label>
						<textarea placeholder="Pesan" name="saran_pesan" class="form-control" name="xmessage" required rows="5"></textarea>
					</div>
					<button type="submit" name="simpan" class="btn btn-primary btn-submit">Kirim</button>
					<!-- <div class="contact-social">
						<a href="#"><i class="fa fa-instagram"></i></a>
						<a href="#"><i class="fa fa-facebook"></i></a>
						<a href="#"><i class="fa fa-twitter"></i></a>
						<a href="#"><i class="fa fa-dribbble"></i></a>
						<a href="#"><i class="fa fa-behance"></i></a>
					</div> -->
				</div>
				<div class="col-lg-6 contact-info">
					<h3>Lokasi Kami</h3>
					<?= $pinstansi['maps'] ?>
				</div>
			</div>
		</div>
</form>

<?php  
                        if (isset($_POST['simpan'])) 
                        {
                            $hasil = $pesan->add($_POST['nama_pesan'],$_POST['email_pesan'],$_POST['kontak_pesan']
							,$_POST['saran_pesan']);
                            if ($hasil=="sukses") 
                            {
                                echo "<script>alert('Pesan telah kami terima, Terima Kasih!');</script>";
                                echo "<script>location='./kontak';</script>";
                            }
                            else
                            {
                                echo "<script>alert('Produk gagal ditambahkan, produk sudah terdaftar pada sistem!');</script>";
                                echo "<script>location='index.php?halaman=tambahproduk';</script>";
                            }
                        }
                        ?>

	</section>

	<section class="related-product-section spad">
		
	</section>

	<?php include 'footer.php'; ?>
	<?php include 'whatsapp.php'; ?>

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>
