<div class="card">
	<div class="card-body">
		<h5 class="text-center">Ubah Password</h5>
		<p class="text-center"><i class="fa fa-info-circle"></i> Mohon untuk tidak memberitakukan password Anda kepada siapa pun!</p>
		<p></p>
		<hr>
		<form method="post">
			<div class="form-group">
				<label for="">Password Lama</label>
				<input type="text" name="passlama" class="form-control" placeholder="Password Lama" required="">
			</div>
			<div class="form-group">
				<label for="">Password Baru</label>
				<input type="text" name="pass" class="form-control" placeholder="Password Baru" required="">
			</div>
			<div class="form-group">
				<label for="">Konfirmasi Password</label>
				<input type="text" name="password" class="form-control" placeholder="Konfirmasi Password" required="">
			</div>
			<button name="ubah_password" class="btn btn-primary"><i class="fa fa-edit"></i> Ubah</button>
			<button type="reset" class="btn btn-info"><i class="fa fa-refresh"></i> Reset</button>
		</form>
		<?php  
                    if (isset($_POST['ubah_password'])) 
                    {
                     $pass = $_POST['pass'];
                     if (strlen($pass) >= 8) 
                     {
                      $passbaru = $_POST['pass'];
                      $konfirm = $_POST['password'];
                      if ($passbaru == $konfirm) 
                      {
                        $hasil=$pelanggan->ubahpassword($_POST['passlama'],$_POST['pass'],$_POST['password']);
                        if ($hasil=="sukses") 
                        {
                         echo "<script>alert('Password anda berhasil di perbaharui');</script>";
                         echo "<script>location='index.php?halaman=ubah_password';</script>";
                       }
                       else
                       {
                        echo "<script>alert('Password lama anda salah');</script>";
                        echo "<script>location='index.php?halaman=ubah_password';</script>";
                      }
                    }
                    else
                    {
                      echo "<script>alert('Ubah password gagal, Konfirmasi password tidak sama');</script>";
                      echo "<script>location='index.php?halaman=ubah_password';</script>";
                    }
                  }
                  else
                  {
                    echo "<script>alert('Ubah password gagal, Password kurang dari 8');</script>";
                    echo "<script>location='index.php?halaman=ubah_password';</script>";
                  }
                }
                ?>
	</div>
</div>