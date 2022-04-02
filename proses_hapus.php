<?php include 'koneksi.php';
error_reporting(0);
$id = $_GET["id"];
if(hapus_penilaian($id) > 0){
        echo "
        <script>
            alert('data berhasil ditambahkan!');
            window.location = 'penilaian.php';
        </script>
        ";
    }else{
        echo "gagal";
    }
?>