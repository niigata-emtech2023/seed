<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>得点項目削除完了画面</title>
</head>
<body>
    &lt;削除確定画面&gt;
	<%
		int number = (Integer) request.getAttribute("number");
		if (number > 0) {
	%>
	削除しました。<br>
	<%
		} else {
	%>
	削除できませんでした。<br>
	<%
		}
	%>
	<jsp:useBean id="delete" scope="session" class="model.entity.SpoFesBean" />
	内容<jsp:getProperty name="delete" property="task_info" /><br>

	<form action="adminselect.jsp" method="POST">
		<input type="submit" value="メニューに戻る">
	</form>

	<% session.invalidate(); %>

</body>
</html>