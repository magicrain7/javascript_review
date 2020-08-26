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
<button type = "button" id ="btnDelete" onclick="deleteFruit()">삭제</button>
<select id = "listFruit" size="10"></select>
<script>
  													//https://www.w3schools.com/jsref/met_select_remove.asp 삭제도 만들기 
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
function deleteFruit() {
	var option = document.getElementById("listFruit");
	option.remove(option.selectedIndex);
}
</script>
</body>
</html>