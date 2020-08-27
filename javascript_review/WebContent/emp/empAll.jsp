<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empAll</title>
</head>
<body>
<h3>사원목록</h3>
<a href="#" >king</a><br>
<a href="#" >steven</a><br>
<a href="#" >scott</a><br>
<script>
//https://www.w3schools.com/js/js_htmldom_eventlistener.asp
	//onclick event 대신 사용
	var atag = document.getElementsByTagName("a");
	for(i=0; i<atag.length; i++) {
		atag[i].addEventListener("click", choose);
	}
	
	function choose() {
		opener.document.getElementById("manager_id").value = 
								window.event.target.innerHTML //태그사이의 내용
		window.close();
	}
</script>
</body>
</html>