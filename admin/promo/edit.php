<?php  
$data = $promo->ambil($_GET['id']);
?>
<section class="pcoded-main-container">
    <div class="pcoded-content">
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Edit Promo</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Data Promo</a></li>
                            <li class="breadcrumb-item"><a href="#!">Edit Promo</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <a href="index.php?halaman=promo" class="btn btn-warning"><i class="feather icon-chevron-left"></i> Kembali</a>
                        <hr>
                        <?php  
                        if (isset($_POST['ubah'])) 
                        {
                          $promo->edit($_POST['kode'],$_POST['tgl'],$_POST['diskon'],$_FILES['foto'],$_POST['ket'],$data['id_promo']);

                            echo "<script>alert('Promo berhasil disimpan!');</script>";
                            
                            
                        }
                        ?>
                        <form method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="">Kode Promo</label>
                                <input type="text" name="kode" class="form-control" value="<?= $data['kode_promo'] ?>" placeholder="Kode Promo" required="">
                            </div>
                            <div class="form-group">
                                <label for="">Tanggal Promo</label>
                                <input type="date" name="tgl" class="form-control" value="<?= $data['tgl_promo'] ?>" placeholder="Tanggal Promo" required="">
                            </div>
                            <div class="form-group">
                                <label for="">Jummlah Diskon</label>
                                <input type="text" name="diskon" class="form-control" value="<?= $data['diskon'] ?>" placeholder="Contoh : 20" required="">
                            </div>
                            <div class="form-group">
                                <label for="">Foto Promo</label>
                                <input type="file" name="foto" class="form-control" required="">
                            </div>
                            <div class="form-group">
                                <label for="">Keterangan Promo</label>
                                <input type="text" name="ket" class="form-control" value="<?= $data['keterangan'] ?>" placeholder="Keterangan Promo" required="">
                            </div>
                            <button name="ubah" class="btn btn-primary"><i class="feather icon-save"></i> Simpan</button>
                            <button type="reset" class="btn btn-info"><i class="feather icon-refresh-ccw"></i> Reset</button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>