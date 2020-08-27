<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_string</title>
</head>
<body>
<h3>string obejct</h3>
<!-- https://www.w3schools.com/js/js_string_methods.asp -->
<div id = "result"></div>
<script>
	var url = "/review/member/memberinsert.jsp";
/* 	var sub = url.substr(13);
	document.getElementId("result").innerHTML = sub; 
	https://www.w3schools.com/js/js_string_methods.asp
	*/
	
	//페이지명만 div에 출력
	result.innerHTML = url.substring(url.lastIndexOf("/")+1);
</script>
</body>
</html>