<?php

  include('db.php');

  $nama = $_POST['nama'];
  $username = $_POST['username'];
  $password = $_POST['password'];
  $alamat = $_POST['alamat'];
  $nomor = $_POST['nomor'];
  $role = 2;
  
  if(empty($nama) || empty($username) || empty($password) || empty($alamat) || empty($nomor))
  {
    echo "<script>alert('Data anda belom lengkap,isi kembali !'); window.location = 'Registrasi.php'</script>";
  }
  else
  {
  $query = "INSERT INTO member VALUES(null,'$nama', '$username', '$password', '$alamat','$nomor','$role')";
  $exec = mysqli_query($conn,$query);        
  if($exec)
    {
      echo "<script>alert('anda telah terdaftar,silahkan login !'); window.location = 'index.php'</script>";
      die();
    }else{
      echo "<script>alert('anda gagal mendaftar  !'); window.location = 'Registrasi.php'</script>";
      die();
    }
  }
?>