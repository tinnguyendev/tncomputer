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

<nav class="verdropdown">
	<ul>
		<li>
			<a href="#">Quản lý User</a>
			<ul>
				<li><a href="#">Thêm</a></li>
				<li><a href="#">Xem</a></li>
			</ul>
		</li>
		<li>
			<a href="#">Quản lý Nhóm sản phẩm</a>
			<ul>
				<li><a href="#">Thêm</a></li>
				<li><a href="#">Xem</a></li>
			</ul>
		</li>
		<li>
			<a href="#">Quản lý Sản phẩm</a>
		</li>
		<li>
			<a href="#">Quản lý Tin tức</a>
		</li>
	</ul>
</nav>