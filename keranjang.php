<?php  
include 'config/class.php';
$tampilkeranjang = $pembelian->tampilkeranjang();
$data_instansi = $instansi->detail();

if (isset($_GET['ubah_keranjang'])) 
{
	if (isset($_GET['quantity']) && isset($_GET['id_produk'])) 
	{
		$jumlah = $_GET['quantity'];
		$id_produk = $_GET['id_produk'];
		if (isset($_SESSION["keranjang"][$id_produk]))
		{
			$_SESSION["keranjang"][$id_produk]=$jumlah;
		}
		echo "<script>alert('Jumlah produk telah diperbaharui!');</script>";
								echo "<script>location='keranjang.php';</script>";
	}
}
?>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Keranjang | Hawamini Store</title>
	<meta charset="UTF-8">
	<meta name="description" content=" Divisima | eCommerce Template">
	<meta name="keywords" content="divisima, eCommerce, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" href="media/upload-instansi/<?= $data_instansi['logo_instansi'] ?>" type="image/x-icon">
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/flaticon.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>
	<link rel="stylesheet" href="css/jquery-ui.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<style>
	
.quantity {
 display: inline-block; }

.quantity .input-text.qty {
 width: 35px;
 height: 39px;
 padding: 0 5px;
 text-align: center;
 background-color: transparent;
 border: 1px solid #efefef;
}

.quantity.buttons_added {
 text-align: left;
 position: relative;
 white-space: nowrap;
 vertical-align: top; }

.quantity.buttons_added input {
 display: inline-block;
 margin: 0;
 vertical-align: top;
 box-shadow: none;
}

.quantity.buttons_added .minus,
.quantity.buttons_added .plus {
 padding: 7px 10px 8px;
 height: 41px;
 background-color: #ffffff;
 border: 1px solid #efefef;
 cursor:pointer;}

.quantity.buttons_added .minus {
 border-right: 0; }

.quantity.buttons_added .plus {
 border-left: 0; }

.quantity.buttons_added .minus:hover,
.quantity.buttons_added .plus:hover {
 background: #eeeeee; }

.quantity input::-webkit-outer-spin-button,
.quantity input::-webkit-inner-spin-button {
 -webkit-appearance: none;
 -moz-appearance: none;
 margin: 0; }
 
 .quantity.buttons_added .minus:focus,
.quantity.buttons_added .plus:focus {
 outline: none; }


	</style>
</head>
<body>

	<div id="preloder">
		<div class="loader"></div>
	</div>

	<?php include 'header.php'; ?>

	<div class="page-top-info">
		<div class="container">
			<h4>Keranjang</h4>
			<div class="site-pagination">
				<a href="">Home</a> /
				<a href="">Keranjang</a>
			</div>
		</div>
	</div>

	<section class="cart-section spad">
		<div class="container">
			<div class="row">
				<?php if (empty($tampilkeranjang)): ?>
					<div class="col-lg-12">
						<div class="cart-table">
							<h3>Keranjang Belanja</h3>
							<hr>
							<div class="cart-table-warp">
								<center>
									<img width="100" src="img/online-shop.png" alt=""><br><br>
									<h5>Keranjang belanja Anda Kosong</h5><br>
									<a href="produk" class="btn btn-primary"> Belanja Sekarang</a>
								</center>
							</div>
							<br><br>
						</div>
					</div>
					<?php else: ?>
						<div class="col-lg-9">
							<div class="cart-table">
								<h3>Keranjang Belanja</h3>
								<div class="cart-table-warp">
									<table>
										<thead>
											<tr>
												<th class="product-th">Produk</th>
												<th class="quy-th">Jumlah</th>
												<th class="total-th">Subtotal</th>
												<th class="total-th">Tindakan</th>
											</tr>
										</thead>
										<tbody>
											<?php  
											$total = 0;
											?>
											<?php foreach ($tampilkeranjang as $key => $value): ?>
												<?php  
												$total += $value['subharga'];
												?>
												<tr>
													<td class="product-col">
														<img src="media/upload-produk/<?= $value['gambar_produk'] ?>" alt="">
														<div class="pc-title">
															<h4><?= $value['nama_produk'] ?></h4>
															<p>Rp. <?= number_format($value['harga_produk']) ?></p>
														</div>
													</td>
													<td class="quy-col">
<form action="keranjang.php" method="GET">
									<input type="hidden" name="ubah_keranjang" value="ubah">
														<input type="hidden" name="id_produk" value="<?= $value['id_produk'] ?>">						 <div class="quantity buttons_added">
	<input type="button" value="-" class="minus">
	<input type="number" step="1" min="1" max="" name="quantity" value="<?= $value['jumlah'] ?>" title="Qty" class="input-text qty text" size="4" pattern="" inputmode="" onchange="this.form.submit()">
	<input type="button" value="+" class="plus">
</div>
	</form>													
												

													
													</td>
													<td class="total-col" width="20%"><h4>Rp. <?= number_format($value['subharga']) ?></h4></td>
													<td class="total-col"><a href="hapuskeranjang.php?id=<?= $value['id_produk'] ?>" class="btn btn-danger btn-sm" onclick="return confirm('Apakah anda yakin?')"><i class="fa fa-trash"></i></a></td>
												</tr>
											<?php endforeach ?>
										</tbody>
									</table>
								</div>
								<div class="total-cost">
									<h6>Total <span>Rp. <?= number_format($total) ?></span></h6>
								</div>
							</div>
						</div>
						<div class="col-lg-3 card-right">
							<a href="checkout" class="site-btn">Beli</a>
							<a href="produk" class="site-btn sb-dark">Lanjut Belanja</a>
						</div>
					<?php endif ?>
					
				</div>
			</div>
		</section>
		<?php include 'footer.php'; ?>

		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.slicknav.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.nicescroll.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/jquery-ui.min.js"></script>
		<script src="js/main.js"></script>

		<script>
				function wcqib_refresh_quantity_increments() {
    jQuery("div.quantity:not(.buttons_added), td.quantity:not(.buttons_added)").each(function(a, b) {
        var c = jQuery(b);
        c.addClass("buttons_added"), c.children().first().before('<input type="button" value="-" class="minus" />'), c.children().last().after('<input type="button" value="+" class="plus" />')
    })
}
String.prototype.getDecimals || (String.prototype.getDecimals = function() {
    var a = this,
        b = ("" + a).match(/(?:\.(\d+))?(?:[eE]([+-]?\d+))?$/);
    return b ? Math.max(0, (b[1] ? b[1].length : 0) - (b[2] ? +b[2] : 0)) : 0
}), jQuery(document).ready(function() {
    wcqib_refresh_quantity_increments()
}), jQuery(document).on("updated_wc_div", function() {
    wcqib_refresh_quantity_increments()
}), jQuery(document).on("click", ".plus, .minus", function() {
    var a = jQuery(this).closest(".quantity").find(".qty"),
        b = parseFloat(a.val()),
        c = parseFloat(a.attr("max")),
        d = parseFloat(a.attr("min")),
        e = a.attr("step");
    b && "" !== b && "NaN" !== b || (b = 0), "" !== c && "NaN" !== c || (c = ""), "" !== d && "NaN" !== d || (d = 0), "any" !== e && "" !== e && void 0 !== e && "NaN" !== parseFloat(e) || (e = 1), jQuery(this).is(".plus") ? c && b >= c ? a.val(c) : a.val((b + parseFloat(e)).toFixed(e.getDecimals())) : d && b <= d ? a.val(d) : b > 0 && a.val((b - parseFloat(e)).toFixed(e.getDecimals())), a.trigger("change")
});
		</script>

	</body>
	</html>
