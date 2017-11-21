<?php

//Lấy ra $limit record sản phẩm kể từ vị trí $start
$sql = "select * from product";
if(!empty($_GET['catid']))
	$catid = addslashes($_GET['catid']);
if(!empty($catid))
	$sql.=" where catid='$catid'";

if(isset($_GET['start']))
	$start=$_GET['start'];
else
	$start=0;

if(isset($_GET['limit']))
	$limit=$_GET['limit'];
else
	$limit=6;

$sql.=" limit $start,$limit";



$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result) > 0){
	$count=1;
	$allrows = mysqli_fetch_all($result, MYSQLI_ASSOC);
	//Xuất sản phẩm ra màn hình - mỗi sản phẩm trong 1 thẻ div
	echo "<div class=row>";
	foreach($allrows as $row){
		echo "<div class=col-sm-4>";
		echo "<div class=hinhsp><img src='upload/images/product/".$row['catid']."/".$row['image']."' class=img-thumbnail></div>";
		echo "<p class=productid>Mã SP: ".$row['productid']."</p>";
		echo "<p class=productname>".$row['productname']."</p>";
		if($row['saleprice'] != null){
			echo "Giá: <span class=pricedel>".$row['price']."</span><br>";
			echo "Sale: <span class=saleprice>".$row['saleprice']."</span><br>";
		}
		else
			echo "Giá: ".$row['price']."<br><br>";
		echo "<a class='btn btn-outline-primary'>".$row['views']." Views</a>";
		echo "<a class='btn btn-primary' href='#' role='button'>Mua Hàng</a>";
		echo "</div>";
	}
	echo "</div>";
}
else{
	echo "0 sản phẩm";
	$count=0;
}

//Tính các biến cần thiết để phân trang
$baseurl = "product";
if(isset($_GET['catid']))
	$baseurl.="-".$_GET['catid'];
if(isset($_GET['totalpage']))
	$totalpage=$_GET['totalpage'];
else{
	$sql="select productid from product";
	if(isset($_GET['catid']))
		$sql.=" where catid='".$_GET['catid']."'";
	$result=mysqli_query($conn, $sql);
	$numrow=mysqli_num_rows($result);
	$totalpage=ceil($numrow/$limit);

}

//Gọi function paging để xuất chuỗi phân trang
paging($baseurl, $start, $limit, $totalpage, $count);

?>