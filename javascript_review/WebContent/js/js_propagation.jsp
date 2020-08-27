<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
		padding: 30px;
		border :1px solid black;
	}
</style>
<script>
//https://www.w3schools.com/jsref/dom_obj_event.asp
window.addEventListener("load",function(){
	a.addEventListener("click",function(){alert("A");});
	b.addEventListener("click",function(){alert("B");});
	c.addEventListener("click",function(){
		alert("C");
		window.event.stopPropagation(); //전파 중지 함수
	});
	linka.addEventListener("click",function(){
		if(! confirm("이동할까요??")) {
			window.event.preventDefault(); //a, submit 
		}
	});
});
</script>
</head>
<a href="js_event.jsp" id="linka">이벤트 테스트</a>
<body>
	<div id="a">A
		<div id="b">b
			<div id="c">c
			</div>
		</div>
	</div>
</body>
</html>