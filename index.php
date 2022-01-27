<!doctype html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">


  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <title>SasakNews</title>
</head>

<body>
  <?php
  include 'navbar_index.php';
  ?>
  <?php
  include 'slider.php';
  ?>
  <div class="contaiter-fluid py-3">
    <div class="container">
      <div class="row">

        <h3 style="text-align:center;">HALAMAN BERITA</h3>
        <hr>
        <?php
     require 'admin/koneksi.php';

     $sql = "SELECT * FROM  tbl_artikel";
     $query = mysqli_query($koneksi, $sql);
    while( $data = mysqli_fetch_object($query)) {
        ?>
        <div class="col-md-3">
          <div class="card" style="height: 10px, margin-left: ($spacer * .25) !important;">
            <img src="admin/img/<?= $data->gambar; ?>" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title"><?= $data->judul; ?></h5>
              <a href="detail.php?id=<?= $data->id; ?>" class="btn btn-primary">Detail</a>
            </div>
          </div>
        </div>
        <?php
    }
     ?>
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
  </script>

</body>

</html>