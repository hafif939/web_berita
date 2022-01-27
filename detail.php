<!doctype html>
<html lang="en">
  <head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>SasakNews</title>
  </head>
  <body>
  <?php
  include 'navbar_index.php';
  ?>
  <div class="contaiter">    
    <div class="row">
    <?php
        require 'admin/koneksi.php';
        if(isset($_GET['id'])){
            $id = $_GET['id'];
            $sql = "SELECT * FROM  tbl_artikel WHERE id='$id'";
            $query = mysqli_query($koneksi, $sql);
            $data = mysqli_fetch_object($query);
    
        }
    ?>
            <div class="col-md-4">
                <div class="card" style="width: 20rem; border-radius: 20px;">
                    <img src="admin/img/<?= $data->gambar; ?>" alt="" srcset="">
                </div>
            </div>
            <div class="col-md-4">
                <div class="card-body">
                    <h5 class="card-title"><?= $data->judul; ?></h5>
                    <p><?= $data->isi; ?></p>
                </div>
            </div>
        </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>