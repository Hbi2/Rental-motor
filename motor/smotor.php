<?php
include("konek.php");
$polisi = $_POST['txtPolisi'];
$merk = $_POST['txtMerk'];
$harga = $_POST['txtHarga'];
$tahun = $_POST['txtTahun'];
$smotor = $_POST['status'];

// Corrected SQL query
$simpan = mysqli_query($konek, "INSERT INTO motor (no_polisi, merk, tahun,harga,s_motor) VALUES ('$polisi', '$merk', '$tahun', '$harga', '$smotor')") or die(mysqli_error());

if ($simpan) {
    header("Location:index.php?x=motor");
}
?>