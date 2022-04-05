<?php include 'koneksi.php';
error_reporting(0);
$id = $_GET["id"];
if(hapus_nilai($id) > 0){
// hapus_user($id);
hapus($id);
     echo "
        <script>
            alert('data berhasil dihapus!');
            window.location = 'datapegawai.php';
        </script>
        ";
    }else{
        echo "gagal";
    }
?>
