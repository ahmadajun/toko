<?php  
include '../config/class.php';
$data = $pembelian->tampilnotifikasi();
$id_pelanggan = $data['id_pelanggan'];;
$result = array();
$totnotifikasi =$pembelian->totalnotifikasi($id_pelanggan);
array_push($result, array('totnotifikasi' => $totnotifikasi));
echo json_encode(array("result" => $result));
?>