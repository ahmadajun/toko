<?php  
include '../../config/class.php';
include '../../config/fungsi.php';
date_default_timezone_set("Asia/Jakarta");
$id=$_GET['id'];
$data=$pembelian->detail($id);
$produk=$pembelian->detail_pembelian($id);
$konfigurasi = $instansi->detail();
$tgl= date("Y-m-d");
?> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>.:: Nota ::.</title>
  <style type="text/css">
    table {
      max-width: 100%;
      max-height: 100%;
    }
    body {
      padding: 5px;
      position: relative;
      width: 100%;
      height: 100%;
    }
    table th,
    table td {
      padding: .625em;
      text-align: center;
    }
    table .kop:before {
      content: ': ';
    }
    .left {
      text-align: left;
    }
    table #caption {
      font-size: 1.5em;
      margin: .5em 0 .75em;
    }
    table.border {
      width: 100%;
      border-collapse: collapse
    }

    table.border tbody th, table.border tbody td {
      border: thin solid #000;
      padding: 2px
    }
    .ttd td, .ttd th {
      padding-bottom: 4em;
    }
    @media print{
      .no-print
      {
        display: none;
      }
    }

  </style>
  <link href="../css/style.default.css" rel="stylesheet" type="text/css" />
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body>
  <div id='contentwrapper' class='contentwrapper'>
    <div id="judul">
      <br />
      <br />

      <div class="container">
        <a href="#" class="no-print" onclick="window.print();"><button class="btn btn-success"><i class="glyphicon glyphicon-print"></i> Cetak/Print</button></a> <br><br>
        <table class="table table-striped">
          <thead>
            <tr>
              <td colspan="6" width="485" id="caption"><?= $konfigurasi['nama_instansi'] ?></td>
            </tr>
            <tr>
              <td colspan="2">ID Transaksi</td>
              <td class="left kop"><?= $data['id_pengiriman'] ?></td>
              <td></td>
              <td>Tanggal</td>
              <td class="left kop"><?= date('d F Y', strtotime($data['tanggal_pembelian'])) ?></td>
            </tr>
            <tr>


            </tr>
            <tr>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th>No</th>
              <th>NAMA PRODUK</th>
              <th>HARGA PRODUK</th>
              <th>JUMLAH</th>
            </tr>
            <?php  
            $total = 0;
            ?>
            <?php foreach ($produk as $key => $value): ?>
              <?php  
              $total += $value['harga_produk']*$value['jumlah_produk'];
              ?>
              <tr>
                <td align="right"><?= $key+1 ?></td>
                <td><?= $value['nama_produk'] ?></td>
                <td align="right"><?= $value['harga_produk'] ?></td>
                <td>Rp <?= $value['jumlah_produk'] ?></td>
              </tr>
            <?php endforeach ?>
            <tr>
              <th colspan="3"> TOTAL</th>
              <td>Rp <?= $total ?></td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
            <tr class="ttd">
              <th colspan="2">Customer</th>
              <th colspan="2"></th>
              <th colspan="2">Mengetahui</th>
            </tr>
            <tr>
              <td colspan="2"><?= $data['nama_penerima'] ?></td>
              <th colspan="2"></th>
              <td colspan="2"><?= $konfigurasi['pimpinan_instansi'] ?></td>
            </tr>
          </tfoot>
        </table>
        <!-- <table width="100%" >
          <tr>
            <td></td>
            <td width="200px">
              <p>Banjarbaru, <?php echo tanggal_indo(date("Y-m-d")); ?><br>
              Pemilik,</p>
              <br>
              <br>
              <br>
              <p><u><?= $konfigurasi['pimpinan_instansi'] ?></u></p>
            </td>
          </tr>
        </table> -->
      </div>
    </div>
  </div>   


</body>
</html>

