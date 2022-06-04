<form action="" method="post">
  <button type="submit" name="submit">Click Me</button>
</form>

<!-- copy dari sini -->
<head>
			  <style>
				table, td, div, h1, p {font-family: Arial, sans-serif;}
			  </style>
			</head>
			<body style='margin:0;padding:0;'>
			  <table role='presentation' style='width:100%;border-collapse:collapse;border:0;border-spacing:0;background:#ffffff;'>
				<tr>
				  <td align='center' style='padding:0;'>
					<table role='presentation' style='width:602px;border-collapse:collapse;border:1px solid #cccccc;border-spacing:0;text-align:left;'>

					  <tr>
						<td style='padding:36px 30px 42px 30px;'>
						  <table role='presentation' style='width:100%;border-collapse:collapse;border:0;border-spacing:0;'>
							<tr>
							  <td style='padding:0 0 36px 0;color:#153643;'>
								<hr style='color:#153643;'>
								<h1 style='font-size:24px;margin:20px 0 20px 0;font-family:Arial,sans-serif;color: BLACK;' align='center'>LUUMODE STORE</h1>
								<hr style='color:#153643;'>
								
								<h2 style='font-size:22px;margin:25px 0 20px 0;font-family:Arial,sans-serif;color: black;' align='center'>RESET PASSWORD</h2>
								<h3 style='margin:15px 0 20px 0;color: black;' align='center'>Akun :</h3>
								<h2 style='font-size:25px;margin:20px 0 10px 0;font-family:Arial,sans-serif;color: black;' align='center'>$email</h2>
	
								<br>
								<p style='margin:0;font-size:16px;line-height:24px;font-family:Arial,sans-serif;'>Password akun <strong>Luumode Store</strong> anda telah kami reset:</p>
								<table style='border: 0; padding-top: 10px;'>
									<tr>
										<td>Email anda</td>
										<td>: </td>
										<td> $email</td>
									</tr>
									<tr>
										<td>Password baru</td>
										<td>: </td>
										<td> $password</td>
									</tr>
									<tr>
										<td style='padding-top: 15px;'><p style='margin:0 0 12px 0;font-size:16px;line-height:24px;font-family:Arial,sans-serif;'>Terima Kasih. </p></td>
									</tr>
								</table>
							  
							  </td>
							</tr>
							
						  </table>
						</td>
					  </tr>
					  <tr>
						<td style='padding:5px;background:#dddddd;'>
						  <table role='presentation' style='width:100%;border-collapse:collapse;border:0;border-spacing:0;font-size:9px;font-family:Arial,sans-serif;'>
							<tr>
							  <td style='padding:0;width:50%;' align='left'>
								<p style='margin:0;font-size:14px;line-height:16px;font-family:Arial,sans-serif;color:black;'>
									Untuk info lebih lanjut, hubungi kami di <br/><p style='font-size:15px;color:black;text-decoration:underline;'><a style='font-size:15px;color:black;text-decoration:underline;' href='https://api.whatsapp.com/send?phone=6281344662020&text=Hallo%20admin,%20Saya%20ingin%20memesan%20catering.%20Bagaimana%20cara%20ordernya%20?'>081344662020</a></p>
								</p>
							  </td>
							  <td style='padding:0;width:50%;' align='right'>
								<table role='presentation' style='border-collapse:collapse;border:0;border-spacing:0;'>
								  <tr>
									<td style='padding:0 0 0 10px;width:38px;'>
									 <img src='https://github.com/ahmadajun/toko/raw/4eb1ff97cdad7ebda2dd6b3fa145aee7e062b47b/media/upload-instansi/HAWAMINI%20STORE_free-file%20(1).png' alt='logos' width='100' style='height:auto;display:block;border:0;' />
									</td>
									
								  </tr>
								</table>
							  </td>
							</tr>
						  </table>
						</td>
					  </tr>
					</table>
				  </td>
				</tr>
			  </table>
			</body>
			</html>
			<!-- sampai sini -->
<?php
	require_once('function.php');
	if(isset($_POST['submit']))
	{
    
    $to       = 'andrewbelanda@gmail.com';
    $subject  = 'Subject Pengiriman Email Uji Coba';
    $message  = "<p>Isi dari Email Testing</p><br><img alt='logos' src='https://github.com/ahmadajun/toko/raw/4eb1ff97cdad7ebda2dd6b3fa145aee7e062b47b/media/upload-instansi/HAWAMINI%20STORE_free-file%20(1).png' width='300' style='height:auto;display:block;'>";
    smtp_mail($to, $subject, $message, '', '', 0, 0, true);
    
    /*
      jika menggunakan fungsi mail biasa : mail($to, $subject, $message);
      dapat juga menggunakan fungsi smtp secara dasar : smtp_mail($to, $subject, $message);
      jangan lupa melakukan konfigurasi pada file function.php
    */
	}
?>