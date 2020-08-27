<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%@include file="../menu.jsp" %>
<form>
	<div>
		<label for="no">no</label>
			<input type="text" id="no" name="no">
	</div>
	
	<div>
		<label for="poster">작성자</label>
			<input type="text" id="poster" name="poster">
	</div>
	
	<div>
		<label for="subject">제목</label>
			<input type="text" id="subject" name="subject">
	</div>
	
	<div>
		<label for="contents">내용</label>
		<textarea id="contents" name="contents"></textarea>
	</div>
	
	<div>
		<label for="views">조회수</label>
	</div>
	
	<div>
		<label for="filename">첨부파일</label>
			<input type = "file" id = "filename" name = "filename"> 
	</div>
</form>
</body>
</html>