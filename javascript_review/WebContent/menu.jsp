<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<link rel="stylesheet" type="text/css" href="../common.css">
<ul class="menu">
	<li><a href="../member/memberinsert.jsp">회원등록</a></li>
	<li><a href="../member/memberAll.jsp">회원조회</a></li>
	<li><a href="../board/boardInsert.jsp">게시글등록</a></li>
	<li><a href="../board/boardAll.jsp">게시글목록</a></li>
</ul>
<div id="divPageName"></div>
<script>
/* https://www.w3schools.com/JSREF/prop_html_classname.asp */
	url=location.pathname;
	var pageName = url.substring(url.lastIndexOf("/")+1)
	divPageName.innerHTML = pageName;
	lis = document.querySelectorAll(".menu li")
	if(pageName == "memberinsert.jsp"){
		/* lis[0].style.backgroundColor = "yellow"; */
		lis[0].className = "menuActive";
	}else if (pageName == "memberAll.jsp"){
		lis[1].style.backgroundColor = "yellow";
	}
	/* pageName.innerHTML = url.substring(url.lastIndexOf("/")+1); */
</script>