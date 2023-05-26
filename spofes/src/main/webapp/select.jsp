<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.spoFesBean,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>タスク一覧</title>
</head>
<body>
	<%@ include file="header.jsp" %>

	<% 
		List<spoFesBean> taskList = (List<spoFesBean>)request.getAttribute("taskList");
	
	%>
	
	<h3>☆得点項目一覧</h3>
	<table border>
	<% int i = 1; %>
	<%
		for (spoFesBean task : taskList) {
	%>
		<tr>
			<td><%=i%></td>
			<td><%=task.getTaskName()%></td>
			
		</tr>
	<%
		i++;
		}
	%>
	</table>
	
</body>
</html>