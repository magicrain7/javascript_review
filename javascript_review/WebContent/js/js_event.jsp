<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.price {
		display : none;
	}
</style>
<script>
	window.addEventListener("load",init);
	function init() {
		//클래스가 title 태그 찾고 mouseover 보이게
		var titles = document.getElementsByClassName("title"); //배열
		for (i=0; i<titles.length; i++){
			//table title이 어디서 시작하는지 생각.
			titles[i].addEventListener("mouseover",function(){
				var price = this.parentNode.getElementsByClassName("price")[0];
				price.style.display="inline";
			});
				titles[i].addEventListener("mouseout",function(){
				var price = this.parentNode.getElementsByClassName("price")[0];
				price.style.display="none";
		
			});
		}	
	
}
</script>
</head>
<body>
	<div>
		<span class="title">스프링</span>
		<span class="price">5000</span>
	</div>
	
	<div>
		<span class="title">자바</span>
		<span class="price">4000</span>
	</div>
	
	<div>
		<span class="title">자바스크립트</span>
		<span class="price">3000</span>
	</div>

</body>
</html>