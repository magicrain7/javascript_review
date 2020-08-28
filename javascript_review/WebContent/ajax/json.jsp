<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="result"></div>
<script>
	//객체
	var obj = { id:"hong", name:"홍길동" };
	result.innerHTML += obj.name + "<br>";
	
	//배열	
	var arr = [
		{ id:"hong", name:"홍길동" },
		{ id:"lee", name:"이길동" }
	]
	result.innerHTML += arr[1].name + "<br>";
	
	//객체안에 값이 배열인 경우
	var objArr = { id:"hong", name:"홍길동", hobby: ["운동","영화","요리"]}
	result.innerHTML += objArr.hobby[1] + "<br>"; // [	{ }	] , { [  ] } 확인
	
	//객체안에 객체
	var objobj = {members:{cnt:4, list:["김","이" ] }}
	result.innerHTML += objobj.members.list[0] + "<br>";
	//var str = JSON.stringify(obj) or JSON.parse 객체 바꿔줌
	
	
</script>
</body>
</html>