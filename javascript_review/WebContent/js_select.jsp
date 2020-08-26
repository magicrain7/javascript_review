<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input id ="txtFruit" >
<button type = "button" id ="btnAdd" onclick="addFruit()">추가</button>
<select id = "listFruit"></select>
<script>
function addFruit() {
	//텍스트필드의 값을 select에 추가
	//var i = document.getElementById("listFruit");
	//option 태그생성
	var option = document.createElement("option");
	option.text = txtFruit.value
	//select에 추가
	listFruit.add(option);
	//입력필드 초기화
	txtFruit.value = "";
}
</script>
</body>
</html>