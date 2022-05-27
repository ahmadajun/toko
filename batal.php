<?php  
include 'config/class.php';
	$id = $_GET['id'];
	$pembelian->batal($id);

	echo "<script>alert('Pesanan anda berhasil dibatalkan');</script>";
	echo "<script>location='login';</script>";
?>