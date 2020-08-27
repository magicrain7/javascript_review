<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empInsert</title>
</head>
<body>
<form>
	manager<input id="manager_id">
	<button type="button" id="btnSearch" onclick="findManager()">검색</button>
</form>
<script>
//https://www.w3schools.com/jsref/met_win_open.asp
	function findManager(){
	 //window.open("url","새창이름", "새창옵션")
		var popup = window.open("empAll.jsp","empSearch","width=350, heigh=100, left=50,top=10,scrollbars=no");
	 	popup.addEventListener("load",function(){
	 		popup.document.title="사원검색";
	 	})
		//popup.document.title = "사원검색";
	}	
</script>
</body>
</html>