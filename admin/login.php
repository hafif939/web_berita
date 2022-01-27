<?php
session_start();
require 'koneksi.php';

if(isset($_POST['login'])){

    $username = $_POST['txtusername'];
    $password = $_POST['txtpassword'];

    $query = mysqli_query($koneksi, "SELECT * FROM tbl_user WHERE username='$username' and password='$password'");

    if(mysqli_num_rows($query) === 1) {
        header('location: index.php');

        $data = mysqli_fetch_object($query);

        $_SESSION ['login'] = true;
        $_SESSION['nama']=$data->nama;
        $_SESSION['hak_akses']=$data->hak_akses;
}
echo $error = 'Username atau Password Salah';
}
?>

<!DOCTYPE html>
<html lang="en">
<?php include 'layout/head.php'; ?>



<body>
    <div class="container ">
        <div class="row mt-3">
            <div class="col-md-5 offset-4">
                <div class="card card-body">
                    <h3>Login Form</h3>
                    <form action="" method="POST">
                        <input type="text" name="txtusername"
                        class="form-control mb-3" placeholder="Masukan Username">

                        <input type="password" name="txtpassword"
                        class="form-control mb-3" placeholder="Masukan Password">

                        <input type="submit" value="Login" name="login"
                        class="btn btn-primary">
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>