<?php
session_start();
if (!isset($_SESSION['login'])) {
    header('location:../login.php');
}
?>

<!DOCTYPE html>
<html lang="en">
<?php include 'layout/head.php'; ?>

<body>
    <?php include 'layout/navbar.php' ?>
    
    <div class="container">
        <h2 class="alert alert-info mt-3"> EDIT BERITA </h2>
        <?php
                require 'koneksi.php';
                if (isset($_POST['simpan'])) {
                    $id = $_GET['id'];
                    $txtanama_perusahaan = $_POST['txtnama_perusahaan'];
                    $txtalamat = $_POST['txtalamat'];
                    $txtkontak = $_POST['txtkontak'];
                    $txtlogo = $_POST['logo'];
                    if ($txtlogo == "") {
                        $txtlogo = $txtlogouplod;
                    }

                    $sql = "UPDATE tbl_profil_perusahaan SET
                        id='$id', nama_perusahaan='$txtanama_perusahaan' , alamat='$txtalamat', kontak='$txtkontak',
                        logo='$txtlogo' WHERE id=$id";
                    
                    $query = mysqli_query($koneksi, $sql);
                    if ($query){
                        header('location: index.php');
                    }else {
                        echo 'Query Error : ' . mysqli_error($koneksi);
                    }
                }else {
                    $id_perusahaan =$_GET['id_perusahaan'];
                    $query= "SELECT * FROM tbl_profil_perusahaan WHERE id_perusahaan='$id_perusahaan'";
                    $sql = mysqli_query($koneksi, $query);
                    $data = mysqli_fetch_object($sql);
                }
                ?>

        <form action="editprofil.php?id=<?= $data->id_perusahaan; ?>" method="POST">
            <!-- <input type= "hidden" name="txtid" value="<?=$id?>"> -->
            <div class="mb-3">
                <label>nama_perusahaan</label>
                <input type="text" name="txtnama_perusahaan" class="form-control" value="<?=$data->nama_perusahaan;?>">
            </div>

            <div class="mb-3">
                <label>alamat</label>
                <textarea name="txtalamat" class="form-control" cols="30" rows="5" required>
                <?=$data->alamat;?>
                </textarea>
            </div>

            <div class="mb-3">
                <label>kontak</label>
                <input type="text" name="txtkontak" class="form-control" value="<?=$data->kontak;?>">
            </div>
            
            <div class="mb-3">
            <label for="exampleInputFile">Logo</label>
                <div class="custom-file">
                    <input type="file" class="custom-file-input" name="gambar" value="<?=$data->logo;?>">
                    <input type="hidden" class="custom-file-input" name="gambaruplod" value="<?= $data->logo ?>">
                                
                    <!-- <label class="custom-file-label" id="foto" for="exampleInputFile">Pilih Gambar</label>
                 -->
                </div>
            </div>
                <input type="submit" name="simpan" value="Simpan" class="btn btn-primary">
                <a href="index.php" class="btn btn-secondary">Kembali</a>
        </form>
    </div>
    <?php include 'layout/footer.php'; ?>
</body>

</html>