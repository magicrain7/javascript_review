<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
$(function(){
	//버튼 클릭 input 태그 값을 ul 태그에 추가
	$("#btnAdd").on("click",function(){
		var li = $("<li>").text( $("#fruit").val() )
		
		$("ul").append(li);
		//$("ul").append(  $("<li>").text( $("#fruit").val())    )
	});
	
	//li 태그 마우스 오버: 이벤트
	$("ul").on("mouseover","li", function(){  //"li" 가없으면 개별,있으면 그룹 이벤트
		$(this).css("backgroundColor","yellow");
	});
});
</script>
</head>
<body>
<input id="fruit"><button type="button" id = "btnAdd">추가</button>

<ul>
	<li>자바
	<li>스프링
</ul>
</body>
</html>