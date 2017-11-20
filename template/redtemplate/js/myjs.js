$(function(){
	$("li ul").hide();
	$an=1;
	$("a").click(function(){
		if($an==1){
			$(this).next("ul").show();
			$an=0
		}
		else{
			$(this).next("ul").hide();
			$an=1;
		}
	});
});