<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test5/game.jsp</title>
<%-- include된 페이지에 필요한 css도 여기서 로딩을 해야한다. --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
	<jsp:include page="../include/navbar3.jsp">
		<jsp:param value="game" name="thisPage"/>
	</jsp:include>
	
	<h1>game페이지 입니다.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore sint amet deleniti quo facere iusto reprehenderit ut incidunt deserunt voluptatem fugit laboriosam sequi tempora porro optio molestias autem totam ea!</p>
</body>
</html>