<?php

session_start();

$valid_username= "admin";
$valid_password= "admin";


if(isset($_POST["username"]) and isset($_POST["password"])) 
{ //variable session sudah dideklarasi

    if($_POST["username"]==$valid_username and $_POST["password"]==$valid_password)
    { // status login: valid
		$_SESSION["stat_login"]=1;
		$_SESSION["username"]=$_POST["username"];
		$_SESSION["password"]=$_POST["password"];
		echo "<script>alert('Asik bisa login');window.location='home.php'</script>";
		}
		else
		{ //status login:invalid
		echo "<script>alert('Username Atau Password salah, Silahkan Login Kembali.');window.location='index.php'</script>";
    }
	}
	else
	{ // variable session belum di deklarasi
	echo "data tidak lengkap";
	}
	?>