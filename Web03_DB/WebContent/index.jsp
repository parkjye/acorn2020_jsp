<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Web03_DB/css/bootstrap.css" />
<style>
	.nav{
		background-color: lightcyan;
	}
</style>
</head>
<body>
<div class="container-fluid">
	<div class="header"><span></span></div>
	
	<div class="nav">
		<ul class="nav justify-content-center">
			<li class="nav-item">
			   	<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">INDEX Page</a>
			</li>
			<li class="nav-item">
			   	<a class="nav-link active" href="member/list.jsp">회원 목록 보기</a>
			</li>
			<li class="nav-item">
			   	<a class="nav-link" href="todo/list.jsp">할 일 목록 보기</a>
			</li>
			<li class="nav-item">
			    <a class="nav-link" href="#">New List</a>
			</li>
		</ul>
	</div>
	<div class="content"><span></span></div>
	<div class="footer"><span></span></div>
</div><!-- container -->
</body>
</html>