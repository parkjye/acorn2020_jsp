<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음악 추가</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" />
<!--  <style>
.header{
		margin-bottom: 10px;
		padding:5px 0;
			
		width: 100%;
		height: 5%;
		    
		border-top: solid 1px grey;
		border-bottom: solid 3px grey;
		    
		text-align: center;
		font-size: 1.2em;
		}
.contents{
		/*display:inline-block;*/
		margin: 0 auto;
		
		width:50%;
		height:100%;
}
	
.btnContainer{
		float: right;
}
</style>-->
</head>
<body id="overrides">
	<div class="container">
		<div class="header"><h1>header입니다</h1></div>
		<div class="navWrap">
			<ul class="nav justify-content-center">
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }">HOME</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/playlist/insertform.jsp">음악 추가</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/playlist/pList.jsp">table: palylist</a></li>
				<li class="nav-item"><a class="nav-link" href="#">List 2</a></li>
				<li class="nav-item"><a class="nav-link" href="#">List 3</a></li>
			</ul>
		</div><!-- navWrap -->
		<div class="contents">
			<form action="insert.jsp" method="post">
				<div class="form-group">
					<label for="title">제목</label>
					<input type="text" class="form-control" name="title" id="title"/>
				</div>
				
				<div class="form-group">
					<label for="addr">가수</label>
					<input type="text" class="form-control" name="singer" id="singer"/>
				</div>
				
				<div class="btnContainer">
					<button type="submit" class="btn btn-primary btn-sm">추가</button>
					<button type="reset" class="btn btn-secondary btn-sm">취소</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>