<?php include 'koneksi.php';
error_reporting(0);
$data = $_POST;
// var_dump($data);)
if(tambah($data) > 0){
        echo "
        <script>
            alert('data pegawai berhasil ditambahkan!');
            window.location = 'penilaian.php';
        </script>
        ";
    }else{
        echo "gagal";
    }
?>