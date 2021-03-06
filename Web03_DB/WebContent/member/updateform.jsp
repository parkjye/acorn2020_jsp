<%@page import="test.member.dto.MemberDto"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    
    	// 1.GET방식 파라미터로 전달되는 수정할 회원의 번호를 읽어온다.
    	int num = Integer.parseInt(request.getParameter("num"));
    	
    	// 2.DB에서 해당회원 한 명의 정보를 읽어온다.
    	MemberDao dao = MemberDao.getInstance();
    	
    	// 3.읽어온 회원 한 명의 정보를 form에 출력해서 응답한다.
    	MemberDto dto = dao.getData(num);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<link rel="stylesheet" href="/Web03_DB/css/bootstrap.css" />
<style>
	.header{
		/*position: fixed;
		display: flex;*/
		
		margin-bottom: 10px;
		padding:5px 0;
		
	    width: 100%;
	    height: 5%;
	    
	    border-top: solid 1px grey;
	    border-bottom: solid 3px grey;
	    
	    text-align: center;
	    font-size: 1.5em;
	}
	
	.nav{
		background-color: lightcyan;
	}
	
	.contents{
		margin: 0 auto;
		
		width:60%;
		height:100%;
	}
		
	.btnWrap{
		float: right;
	}
	
</style>
</head>
<body>
	<div class="container">
		
		<div class="navbar navbar-expand-sm navbar-dark bg-primary">
			<a class="navbar-brand" href="${pageContext.request.contextPath }/">HOME</a>
	
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/member/list.jsp">Member List</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/member/updateform.jsp">Add a new member</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/todo/list.jsp">To do List</a></li>
			</ul>
		</div>
		
		<!-- breadcrumb -->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}">Home</a></li>
			<li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/member/list.jsp">Member List</a></li>
			<li class="breadcrumb-item active">Modify a Member's Information</li>
		</ol>
	
		<div class="header"><h1>회원정보 수정</h1></div>

		<div class="contents">
			<form action="update.jsp" method="post">
				<%-- [JSP 주석] form을 제출했을 때 회원의 번호가 전송되도록 
					input type="hidden"에 회원 번호를 출력해 놓는다. 
					
					num(PK)는 수정되면 안되서 disabled로 막았지만 수정과 전송이 안되기 때문에 hidden을 사용한다. 
				--%>
				<input type="hidden" name="num" value="<%=dto.getNum() %>"/>
				
				<!-- [웹브라우저 주석] disabled 속성이 추가된 input요소는 수정이 불가하고 
					form을 제출했을 때 전송도 되지 않는다. -->
				<label for="num">번호</label>
				<input type="text" id="num" value="<%=dto.getNum() %>" disabled/>
				
				<div class="form-group">
					<label for="name">이름</label>
					<input class="form-control" type="text" id="name" value="<%=dto.getName() %>"/>
				</div>
				
				<div class="form-group">
					<label for="addr">주소</label>
					<input class="form-control" type="text" id="addr" value="<%=dto.getAddr() %>"/>
				</div>
				
				<div class="btnWrap">
					<button class="btn btn-outline-primary btn-sm" type="submit">수정</button>
					<button class="btn btn-outline-secondary btn-sm" type="reset">취소</button>
				</div>
			</form>
		</div><!-- contents -->
		
	</div><!-- container -->
</body>
</html>