<?php
	function connect(){
		$conn = mysqli_connect(DBHOST, DBUSER, DBPASSWORD) or die("Can not connect database...");
		mysqli_select_db($conn, DBNAME) or die("Can not access database...");
		return $conn;
	}
	$conn = connect();
?>