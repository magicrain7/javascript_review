<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member All</title>
<style>
/* table,th,td {
	border: 1px solid black;
} */
</style>
</head>
<body>
<%@include file="menu.jsp"%>
<h3>회원 전체조회</h3>
<ul class="search">
	<li>메일수신여부</li>
	<li>성별<li>
	<li><button type="button">검색</button>
</ul>
	

<table id = "member" border="1">
	<thead>
	<tr>
		<th>id</th>
		<th>pw</th>
		<th>job</th>
		<th>gender</th>
		<th>mail</th>
	</tr>
	</thead>
	
	<tr>
	<td ><a href="memberselect.jsp">lee</td>
	<td>1234</td>
	<td>프로그래머</td>
	<td>남</td>
	<td>Y</td>
	</tr>
	
	<tr>
	<td>kim</td>
	<td>5678</td>
	<td>디자이너</td>
	<td>남</td>
	<td>Y</td>
	</tr>
	
</table>
</body>
</html>