<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.addEventListener("load",function(){
	var btns = document.getElementsByClassName("btnSelect");
	
	//단독이벤트
/* 	for(i=0; i<btns.length; i++){
		//table button이 어디서 시작하는지 생각.
		btns[i].addEventListener("click",function(){
		var name = this.parentNode.parentNode.getElementsByTagName("td")[0];	
			window.alert(name.innerHTML);
		})		
	} */
	
	//그룹 이벤트
	tbl.addEventListener("click",function(){
		console.dir(event.target) 	//button
		console.dir(this)			//table
		alert(event.target.parentNode.parentNode
						  .getElementsByTagName("td")[0].innerHTML);
	})
})
</script>
</head>
<body>
<table border = "1" id="tbl">
	<tbody>
		<tr>
			<td>kim</td>
			<td>30</td>
			<td><button type="button" class="btnSelect">선택</button></td>
		</tr>
		
		<tr>
			<td>lee</td>
			<td>20</td>
			<td><button type="button" class="btnSelect">선택</button></td>
		</tr>
		
		<tr>
			<td>hong</td>
			<td>10</td>
			<td><button type="button" class="btnSelect">선택</button></td>
		</tr>
	</tbody>
</table>
</body>
</html>