<?php
function paging($baseurl, $start, $limit, $totalpage, $co_san_pham){
	$currentpage=ceil($start/$limit)+1;
	$s="<ul class=pagination>";
	//Nếu không phải là trang 1 thì hiển thị <<
	if($currentpage!=1)
		$s.="<li><a href='".$baseurl."-$totalpage-0-$limit.html'><<</a>";
	//Hiển thị các trang 1,2,3
	for($i=1; $i<=$totalpage; $i++){
		if($currentpage==$i)
			$s.="<li><a href='#'><font color='red'>$i</font></a>";
		else
			$s.="<li><a href='$baseurl-$totalpage-".$limit*($i-1)."-$limit.html"."'>$i</a>";
	}
	//Nếu không phải là trang cuối thì hiển thị >>
	if($co_san_pham){
		if($currentpage!=$totalpage)
			$s.="<li><a href='".$baseurl."-$totalpage-".$limit*($totalpage-1)."-$limit'>>></a>";
		$s.="</ul>";
		echo $s;
	}
}


?>