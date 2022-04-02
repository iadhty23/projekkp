?>
<?php
    include "koneksi.php";

    $data=$_GET['id'];

	$query mysqli_query($conn, "DELETE FROM pegawai WHERE id = $id");
	$query mysqli_query($conn, "DELETE FROM user WHERE id_user = $id");
	$query mysqli_query($conn, "DELETE FROM nilai2 WHERE id_nilai2 = $id");

    $result=mysqli_query($connect, $query);

    if($result){
        echo "Data berhasil berhapus";
?>

<?php
    }else{
        echo "Data gagal dihapus" . mysqli_error($connect);
    }
?>