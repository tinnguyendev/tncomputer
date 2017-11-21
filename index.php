<?php
	include("config.php");
	include("library/function.php");
	require("library/database.php");

	//Lấy dữ liệu từ bảng webinfo.
	$sql = "select * from webinfo";
	$result = mysqli_query($conn, $sql);
	//Kiểm tra kết quả trả về.
	if(mysqli_num_rows($result) > 0)
		$webinfo = mysqli_fetch_assoc($result);

	//Lấy dữ liệu right modules từ bảng module
	$sql = "select * from module where position = 'right'";
	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result) > 0)
		$rightmodules = mysqli_fetch_all($result, MYSQLI_ASSOC);


	//Lấy dữ liệu bottom modules từ bảng module
	$sql = "select * from module where position = 'bottom'";
	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result) > 0)
		$bottommodules = mysqli_fetch_all($result, MYSQLI_ASSOC);

	//Lấy dữ liệu top modules từ bảng module
	$sql = "select * from module where position = 'top'";
	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result) > 0)
		$topmodules = mysqli_fetch_all($result, MYSQLI_ASSOC);

	include("template/".TEMPLATENAME."/index.php");
?>