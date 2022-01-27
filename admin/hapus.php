
<?php
    if (isset($_GET['id'])) {
        require 'koneksi.php';

        $id = $_GET['id'];
        $query = "DELETE FROM tbl_artikel WHERE id ='$id'";
        $result = mysqli_query($koneksi, $query);

        if ($result) {
            header('location:index.php');
        } else {
            echo 'Data Gagal Terhapus' . mysqli_error($koneksi);
        }
    }
?>  