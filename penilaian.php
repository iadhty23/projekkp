<?php include 'koneksi.php'; 
include 'header.php';
?>
<?php
error_reporting(0);
session_start();
$sesi = $_SESSION['level'];
if( $sesi == "" || $sesi == "user" ){
    header("location:login.php");
}

// $nilai = query("SELECT * FROM nilai2 ORDER BY id_nilai2");
$nilai = query("SELECT * FROM nilai2 INNER JOIN pegawai ON pegawai.id = nilai2.id_user ORDER BY id_nilai2");
$sus = count($nilai);


if($sus == 0){
    $jadi = 1;
}else{
    $jadi = 2;
}

?>
 <div id="layoutSidenav_content">
                <main>




    <?php if($jadi == 1) : ?>
        <h3 class="blink">Data Kosong, Silahkan Klik Tambah Nilai</h3>
             <div class="container-fluid px-4 mt-2">
                       <a href="tambah_nilaipegawai.php" class="btn btn-primary mb-2">Tambah Nilai pegawai</a>
                         <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Data Pegawai
                            </div>
                            <div class="card-body">

                      <table id="datatablesSimple">
   <thead>
    <tr>
        <th>NO.</th>
        <th>Nama</th>
        <th>Etika dan <br> Perilaku</th>
        <th>Tanggung <br> Jawab</th>
        <th>Kedisiplinan</th>
        <th>Kecakapan <br> Kerja</th>
        <th>Kehadiran</th>
        <th colspan="2">AKSI</th>
    </tr>
</thead>
    </table>
    <?php else : ?> 
     <div class="container-fluid px-4 mt-2">
                       <a href="tambah_nilaipegawai.php" class="btn btn-primary mb-2">Tambah Nilai pegawai</a>
                         <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Data Pegawai
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
   <thead>
    <tr>
        <th>NO.</th>
        <th>Nama</th>
        <th>Etika dan <br> Perilaku</th>
        <th>Tanggung <br> Jawab</th>
        <th>Kedisiplinan</th>
        <th>Kecakapan <br> Kerja</th>
        <th>Kehadiran</th>
        <th colspan="2">AKSI</th>
    </tr>
</thead>
<tbody>
    <?php $i = 1; ?>
    <?php foreach ($nilai as $row) :  ?>
    <?php 
        $jumlah_k1 = $row["k1"] + $row["k2"];    
        $kriteria1 = ($jumlah_k1 / 8) * 100;
        
        $jumlah_k2 = $row["k3"] + $row["k4"] + $row["k5"];    
        $kriteria2 = ($jumlah_k2 / 12) * 100;

        $jumlah_k3 = $row["k6"] + $row["k7"];
        $kriteria3 = ($jumlah_k3 / 8) * 100;

        $jumlah_k4 = $row["k8"] + $row["k9"];    
        $kriteria4 = ($jumlah_k4 / 8) * 100;

        $jumlah_k5 = $row["k10"] + $row["k11"];    
        $kriteria5 = ($jumlah_k5 / 8) * 100;

        $jumlah_k6 = $row["k12"] + $row["k13"];    
        $kriteria6 = ($jumlah_k6 / 8) * 100;
        
        
    ?>
    <tr>
        <td><?php echo $i; ?></td>
        <td><?php echo $row["nama"]; ?></td>
        <td><?php echo number_format( $kriteria1, 2 ) ; ?></td>
        <td><?php echo number_format( $kriteria2, 2) ; ?></td>
        <td><?php echo number_format( $kriteria3, 2 ) ; ?></td>
        <td><?php echo number_format( $kriteria4, 2 ) ; ?></td>
        <td><?php echo number_format( $kriteria5, 2 ) ; ?></td>
        <td><?php echo number_format( $kriteria6, 2 ) ; ?></td>
        <td>
            <a href="ubah_nilai.php?id=<?= $row["id_nilai2"]; ?>" class="btn btn-warning btn-sm aksi">Ubah</a> |
            <a href="proses_hapus.php?id=<?= $row["id_nilai2"]; ?>" class="btn btn-danger btn-sm aksi" onclick="return confirm('yakin ingin menghapus?');">hapus</a>
        </td>
    </tr>
    <?php $i++; ?>
    <?php endforeach; ?>

</tbody>
    </table>
    <?php endif; ?>
    </div>


</main>
<?php include 'footer.php'; ?>