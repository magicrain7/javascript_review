<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
</style>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
/* window.addEventListener("load",function(){
	
}) */
$(function() {			//축약형 //ready(load이전) 이벤트
	//왼쪽 td클릭
	$("td").on("click",function(){
		$("#right").append( $(this).parent() );
	})
	//오른쪽 td (그룹이벤트)
	//$("td").click(function(){})
	$("#right").on("click","td", function(){
		$("#left").append( $(this).parent() );
	})
})  

//$("body").append($("<div>").attr("id","sel")) id속성값 
</script>
</head>
<body>
<table id ="left" border = "1">
	<tr><td>홍길동</td><td>30</td></tr>
	<tr><td>이기자</td><td>20</td></tr>
	<tr><td>김기자</td><td>10</td></tr>
	
</table>
<br><br>
<table id = "right" border = "1">
</table>
</body>
</html>