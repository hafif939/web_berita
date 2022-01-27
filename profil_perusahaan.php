<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">   
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<div class="card" style="width: 18rem;">
  <img src="admin/img/SasakNews.png" >
  <div class="card-body">
  <tbody>
                <?php
                require 'admin/koneksi.php';
                $query = "SELECT * FROM tbl_profil_perusahaan";
                $sql = mysqli_query($koneksi, $query);
                $no = 1;
                $data = mysqli_fetch_object($sql) 
                ?>
                    <form action="#" method="POST">
            <div class="mb-3">
                <label>Nama Perusahaan : </label>
                <input type="text" name="txtjudul" class="form-control" value=" <?php echo $data->nama_perusahaan; ?> ">
            </div>

            <div class="mb-3">
                <label>Alamat : </label>
                <input type="text" name="txtpenulis" class="form-control" value="<?php echo $data->alamat ?>";>
            </div>

            <div class="mb-3">
                <label>Kontak : </label>
               <input type="text" value="<?php echo $data->kontak ; ?>">
            </div>
            
               
        </form>


                      
                    </td>
                </tr>
</tbody>
  </div>
</div>
      
          
               
          
    </div>
</body>

</html>
</body>
</html>