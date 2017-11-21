<!DOCTYPE html>
<html lang="en">
<head>
	<title>Công ty Laptop TN-COMPUTER</title>
	<!--Required meta tags-->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!--Bootstrap CSS-->
	<link rel="stylesheet" href="../public/use/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="../public/use/font-awesome-4.7.0/css/font-awesome.min.css">

	<!--CSS của riêng mình-->
	<link rel="stylesheet" href="template/css/style.css"> 
</head>
<body>

	<div class="container-fluid">
		<div class="row"> <!-- Header Module -->
			<header class="col-xl-12">
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<a class="navbar-brand" href="#"><image class= "tn-logo" src="../public/images/tn-logo.jpg" alt="LOGO" >TRANG QUẢN LÝ</image></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<div class="tn-top-item">
							<a href="#">Đăng Nhập</a>
						</div>
						<form class="form-inline my-2 my-lg-0">
							<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
							<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
						</form>
					</div>
				</nav>
			</header>
		</div>
		<div class="row"> <!-- Mid Module -->
			<div class="col-sm-3"> <!-- Left Module -->
				<?php include("module/adminmenu.php"); ?>
			</div>
			<div class="col-sm-9"> <!-- Content Module -->
				Content Module
			</div>
		</div>
		<div class="row"> <!-- Footer Module -->
			<footer class="col-xl-12">
				TN-COMPUTER - CỬA HÀNG LAPTOP GIÁ RẺ - CHẤT LƯỢNG HÀNG ĐẦU<br />
				Điện thoại: 1900 1000 - Email: cskh@TN-COMPUTER.COM
			</footer>
		</div>
	</div>
	
	<!--Optional JavaScript-->
	<!--jQuery first, then Popper.js, then Bootstrap.js-->
	<script src="../public/js/jquery.min.js"></script>
	<script src="../public/js/popper.min.js"></script>
	<script src="../public/use/bootstrap/js/bootstrap.min.js"></script>
	<script src="template/js/myjs.js"></script>
</body>
</html>