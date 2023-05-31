<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>得点項目編集画面</title>
</head>
<body>
	<%
request.setCharacterEncoding("UTF-8");
%>

	＜得点項目編集画面＞
	<br> ・内容
	<br>
	<%if(request.getParameter("task_id")!=null){ %>
	<%=request.getParameter("task_id")%>
	<form action="updateconfirmation.jsp" method="post">
		<textarea name="update_info" cols="80" rows="6"><%=request.getParameter("task_info")%></textarea>
		<br> <input type="hidden" name="task_id"
			value="<%=request.getParameter("task_id")%>"> <input
			type="hidden" name="task_origin"
			value="<%=request.getParameter("task_info")%>"> <input
			type="submit" value="編集">
	</form>
	<form action="adminselect.jsp" method="post">
		<input type="submit" value="戻る">
	</form>
	
	<%}else{%>
	<%=request.getAttribute("task_id")%>
	<form action="updateconfirmation.jsp" method="post">
		<textarea name="update_info" cols="80" rows="6"><%=request.getAttribute("update_info")%></textarea>
		<br> <input type="hidden" name="task_id"
			value="<%=request.getAttribute("task_id")%>"> <input
			type="hidden" name="task_origin"
			value="<%=request.getAttribute("update_info")%>"> 
			<input type="submit" value="編集">
	</form>
	<form action="adminselect.jsp" method="post">
		<input type="submit" value="戻る">
	</form>
	<%}%>

	
</body>
</html>