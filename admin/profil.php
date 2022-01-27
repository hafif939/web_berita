<?php
session_start();
if (!isset($_SESSION['login'])) {
    header('location: login.php');
}
?>

<!DOCTYPE html>
<html lang="id">

<?php include 'layout/head.php'; ?>
<?php include 'layout/navbar.php'; ?>

<body>
    <div class="container">
        <h2 class="alert alert-info mt-3">Selamat Datang : <?php echo $_SESSION['nama']; ?></h2>

        <a href="tambah.php" class="btn btn-info mb-3"> TAMBAH DATA </a>
        
        <table class="table table-dark table-bordered">
            <thead>
                <tr>
                    <th>NO</th>
                    <th>Nama Perusahaan</th>
                    <th>Alamat</th>
                    <th>Kontak</th>
                    <th>Logo</th>
                    <th>Aksi</th>
                    
                </tr>
            </thead>
            <tbody>
                <?php
                require 'koneksi.php';
                $query = "SELECT * FROM tbl_profil_perusahaan";
                $sql = mysqli_query($koneksi, $query);
                $no = 1;
                while ($data = mysqli_fetch_object($sql)) {
                ?>
                <tr>
                    <td> <?php echo $no++; ?> </td>
                    <td> <?php echo $data->nama_perusahaan; ?> </td>
                    <td> <?php echo $data->alamat ?> </td>
                    <td> <?php echo $data->kontak ; ?> </td>
                    <td> <a href="img/<?= $data->logo; ?>"><?= $data->logo; ?></a></td>
                    <td>
                        <a href="editprofil.php?id_perusahaan=<?=$data->id_perusahaan;?>">
                            <input type="submit" value="edit" class="btn btn-warning">
                        </a>
                        <?php
                        if ($_SESSION['hak_akses'] == 'admin') { 
                        ?>
                        <a href="hapus.php?id=<?= $data->id;?>">
                            <input type="submit" value="hapus" onclick="return confirm('Yakin Hapus Data ?')" class="btn btn-danger">
                        </a>
                        <?php
                        }
                        ?>
                    </td>
                </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
    </div>
</body>
<?php include 'layout/footer.php'; ?>
</html>