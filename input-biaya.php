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
        <a href="input-penerimaan.php">Input Penerimaan PattyCash</a>
        <a href="input-pengeluaran.php">Input Pengeluaran PattyCash</a>
      </div>
    </li>  
    <li><a href="menu-laporan.php">LAPORAN</a></li>
  </ul>
</div>
<center>
<div id="content">
  <form action="biaya-simpan.php" method="post">
    <h1>Input Data Biaya</h1>

    <fieldset id="UserDataFields">
        <div class="control-group">
            <label>No Biaya</label>
            <input type="text" name="no_biaya" maxLength="8" required autofocus>        
        </div>
        <div class="control-group">
            <label>Nama Biaya</label>
            <input type="text" name="nm_biaya" required>
        </div>
     </fieldset>
    <input type="submit" value="Simpan">
</form>
</div>
</center>   
<div id="footer">
	<p style="font:14px verdana"><BR/>
		- Input Biaya - 
    <br/>
    Copyright Ilham Doni 
	</p>
</div>
</body>
</div>
