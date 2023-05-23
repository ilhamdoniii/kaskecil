<head>
<link href="wow.css" type="text/css" rel="stylesheet" />
<link href="dp.css" type="text/css" rel="stylesheet" />
<link href="gg.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="my.js"></script>
</head>
<body background="body_back.gif"/>
<?php
  include "atas.php";
?>
<div id="wrap">	
<div id="atas">
  <ul>
    <li><a href="home.php">HOME</a></li>
    <li class="dropdown">
      <a href="javascript:void(0)" class="dropbtn">INPUT DATA</a>
      <div class="dropdown-content">
        <a href="input-biaya.php">Input Biaya</a>
        <a href="input-penerimaan.php">Input Penerimaan Pattycash</a>
        <a href="input-pengeluaran.php">Input Pengeluaran Pattycash</a>
      </div>
    </li>  
    <li><a href="menu-laporan.php">LAPORAN</a></li>
    <li style="float:right"><a href="logout.php" onclick="javascript: return confirm('Anda Yakin Ingin Keluar ?')"><input type="submit" value="LOGOUT"></a></li>
  </ul>
</div>
<center>
<div id="content">
<h3>Sistem Informasi Pattycash PT RYTECH INDONESIA</h3>
</div>
</center>
<img src="home.png" style="display: block; margin: 0 auto; text-align: center; height: 400px;"/>		
<div id="footer">
	<p style="font:14px verdana">
		- Home -
    <br/>
    Copyright Ilham Doni
	</p>
</div>
</body>
</div>
