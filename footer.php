<?php  
	$logi = $instansi->logo();
	$finstansi = $instansi->detail();
?>

<section class="footer-section">
	<div class="container">
		<div class="footer-logo text-center">
			<a href="./"><img src="media/upload-instansi/<?= $logi['gambar'] ?>" alt=""></a>
		</div>

	</div>
	<div class="social-links-warp">
		<div class="container">
			<div class="social-links">
				<a href="https://www.instagram.com/luumodeestore/" class="instagram"><i class="fa fa-instagram"></i><span>instagram</span></a>
				
				
				<a href="https://www.facebook.com/luumodeestore/" class="facebook"><i class="fa fa-facebook"></i><span>facebook</span></a>
				
			</div>

			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --> 
			<p class=" text-center mt-5">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | <?= $finstansi['nama_instansi'] ?></p>
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

		</div>
	</div>
</section>
<!-- Start of Tawk.to Script-->
<!-- <script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5e4425aea89cda5a1885952c/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script> -->
<!--End of Tawk.to Script -->