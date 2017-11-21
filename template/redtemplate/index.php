<!DOCTYPE html>
<html lang="en">
<head>
	<title>Công ty Laptop TN-COMPUTER</title>
	<!--Required meta tags-->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!--Bootstrap CSS-->
	<link rel="stylesheet" href="public/use/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="public/use/font-awesome-4.7.0/css/font-awesome.min.css">

	<!--CSS của riêng mình-->
	<link rel="stylesheet" href="template/redtemplate/css/style.css"> 
</head>
<body>

	<div class="container-fluid">
		<div class="row"> <!-- Header Module -->
			<header class="col-xl-12">
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<a class="navbar-brand" href="#"><image class= "tn-logo" src="public/images/<?php echo $webinfo['logo']; ?>" alt="LOGO" ></image></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active">
								<a class="nav-link" href="news.html">Tin Tức <span class="sr-only">(current)</span></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="product.html">Sản Phẩm</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#">Liên Hệ</a>
							</li>
						</ul>
						<div>Hotline: <span class="tn-hotline"><?php echo $webinfo['phone']; ?></span></div>
						<div class="tn-top-item">
							<a><i class="fa fa-shopping-basket tn-shoppingcart" aria-hidden="true"></i>Giỏ Hàng</a>
							<a href="#">Đăng Ký</a>
							<a href="#">Đăng Nhập</a>
						</div>
						<form class="form-inline my-2 my-lg-0" action="index.php?content=productsearch" method=post>
							<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name=key>
							<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
						</form>
					</div>
				</nav>
			</header>
		</div>
		<div class="row"> <!-- Top Module -->
			<?php
			for($i = 0; $i < count($topmodules); $i++)
				include("module/".$topmodules[$i]['name'].".php");
			?>
		</div>
		<div class="row"> <!-- Mid Module -->
			<div class="col-sm-3"> <!-- Left Module -->
				<?php
				if(isset($_REQUEST['content'])){
					if($_REQUEST['content']=='news')
						include("module/newsmenu.php");
					else
						include("module/productmenu.php");
				}
				else
					include("module/productmenu.php");
				?>
			</div>
			<div class="col-sm-6"> <!-- Content Module -->
				<?php
				if(isset($_REQUEST['content'])){
					switch($_REQUEST['content']){
						case 'productsearch': include("content/productsearch.php"); break;
						case 'product': include("content/product.php"); break;
						case 'news': include("content/news.php"); break;
						default: include("content/product.php");
					}
				}
				else{
					include ("content/product.php");
				}
				?>
			</div>
			<div class="col-sm-3"> <!-- Right Module -->
				<?php
				for($i = 0; $i < count($rightmodules); $i++)
					include("module/".$rightmodules[$i]['name'].".php");
				?>
			</div>
		</div>
		<div class="row"> <!-- Bottom Module -->
			<?php
			for($i = 0; $i < count($bottommodules); $i++)
				include("module/".$bottommodules[$i]['name'].".php");
			?>
		</div>
		<div class="row"> <!-- Footer Module -->
			<footer class="col-xl-12">
				TN-COMPUTER - CỬA HÀNG LAPTOP GIÁ RẺ - CHẤT LƯỢNG HÀNG ĐẦU<br />
				Điện thoại: 1900 1000 - <?php echo $webinfo['email']; ?>
			</footer>
		</div>
	</div>
	
	<!--Optional JavaScript-->
	<!--jQuery first, then Popper.js, then Bootstrap.js-->
	<script src="public/js/jquery.min.js"></script>
	<script src="public/js/popper.min.js"></script>
	<script src="public/use/bootstrap/js/bootstrap.min.js"></script>
	<script src="template/redtemplate/js/myjs.js"></script>
</body>
</html>