<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
<!-- https://www.w3schools.com/jquery/trysel.asp 선택자 
<!-- https://code.jquery.com/ -->
	<table border = "1" id="tbl">
	<tbody>
		<tr>
			<td id="std">kim</td>
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
<script>
	//$("td:first-child").css("backgroundColor","yellow")
	//$("td:nth-child(2)").css("backgroundColor","yellow")
	$("td:first").css("backgroundColor","green");
	console.log($("#std").closest("table")) //조상 중에서 검색
</script>
</html>