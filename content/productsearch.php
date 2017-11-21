<?php
//Gán hàm addslashes để chống sql injection
$key = addslashes($_REQUEST['key']);
//Nếu key rỗng thì báo lỗi, tức là người dùng chưa nhập liệu mà đã nhấn submit.
if(empty($key))
	echo "Yêu cầu nhập dữ liệu và ô search";
else{
	//Lấy toàn bộ sản phẩm thỏa điều kiện từ CSDL
	$sql = "select * from product";
	$sql.=" where productid like '%".$key."%' or productname like '%".$key."%'";


	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result) > 0){
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
	else
		echo "0 sản phẩm";
}

?>