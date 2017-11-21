<style>
	/* verdropdown navigator */
	.verdropdown ul{
		padding-left: 0;
	}

	.verdropdown li{
		min-height: 40px;
		list-style-type: none;
		background: -webkit-linear-gradient(0deg, green, #009900); /* For Safari */
		background: -o-linear-gradient(0deg, green, #009900); /* For Opera 11#1 to 12#0 */
		background: -o-linear-gradient(0deg, green, #009900); /* For Firefox 3#6 to 15 */
		background: -webkit-linear-gradient(0deg, green, #009900); /* Standard syntax (must be hast) */
		border-top: 1px solid #ccc;
		border-bottom: 1px solid #222;
		color: yellow;
		text-align: center;
	}

	.verdropdown li ul li{
		min-height: 40px;
		list-style-type: none;
		background: -webkit-linear-gradient(0deg, #006600, #00aa00); /* For Safari */
		background: -o-linear-gradient(0deg, #006600, #00aa00); /* For Opera 11#1 to 12#0 */
		background: -o-linear-gradient(0deg, #006600, #00aa00); /* For Firefox 3#6 to 15 */
		background: -webkit-linear-gradient(0deg, #006600, #005500); /* Standard syntax (must be hast) */
		border-top: 1px solid #ccc;
		border-bottom: 1px solid #222;
		color: yellow;
		text-align: center;
	}

	.verdropdown li a{
		min-height: 40px;
		display: block;
		width: 100%;
		height: 100%;
		text-decoration: none;
		color: white;
	}

	.verdropdown li:hover{
		text-shadow: 3px 3px 3px #555;
		border-top: 1px solid #222;
	}

</style>

<?php
$sql = "select * from category";
mysqli_query($conn, "SET NAMES utf8");
$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result)){
	$allrows = mysqli_fetch_all($result, MYSQLI_ASSOC);
}
?>


<nav class="verdropdown">
	<?php
	echo "<ul>";
	$allrows1 = $allrows;
	foreach($allrows as $row){
		//Xuất các item cấp 1
		if($row["parent"] == 0){
			if($row["haschild"] == 0)
				echo "<li><a href='#'>".$row["catname"]."</a></li>";
			else{
				//Nếu item này có con thì xuất cả con của nó
				echo "<li><a>".$row["catname"]."</a>";
				echo "<ul>";
				foreach($allrows1 as $row1)
					if($row1["parent"] == $row["catid"])
						echo "<li><a href='product-".$row1['catid'].".html'>".$row1["catname"]."</a></li>";
				echo "</ul>";
				echo "</li>";
			}
		}
	}
	echo "</ul>";
	?>
</nav>