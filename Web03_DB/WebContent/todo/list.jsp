<%@page import="test.todo.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To do List Page</title>
<link rel="stylesheet" href="/Web03_DB/css/bootstrap.css" />
<style>
	.form-group{
		padding:10px 0;
	}
	.form-group>label{
		margin:0 10px;
	}
</style>
</head>
<body>
<% 
	TodoDao dao = TodoDao.getInstance();
	List<TodoDto> list = dao.getList();
%>
	<div class="container-fluid">
	
		<form action="insert.jsp" method="post" class="form-inline">
			<div class="form-group">
				<label>할 일 추가하기</label>
				<input type="text" name="content" placeholder="Enter your new Task" class="form-control"/>
				<button type="submit" class="btn btn-outline-success">추가</button>
			</div>
		</form>
		
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>To do list</th>
					<th>등록일</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
			<%for(TodoDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getContent() %></td>
					<td><%=tmp.getRegdate() %></td>
					<td><a href="delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
				</tr>
			<%} %>
			</tbody>
		</table>
	</div><!-- container-fluid -->
</body>
</html>