<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.entity.SpoFesBean,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>チェック内容確認画面</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	int point = 0;
	%>

	<%=request.getParameter("team_name")%>
	<br>
	 ＜チェック欄＞ これでよろしいでしょうか
	<table>
		<tr>
			<td>加点</td>

			<%
			for (int i = 1; i <= 15; i++) {
			%>

			<%
			if (request.getParameter("check" + i).equals("true")) {
				point+=1;
			%>
			<td><%=i%></td>
			<%
			}
		}
		%>

		</tr>
		<tr>
			<td>減点</td>
			<%
			for (int i = 1; i <= 15; i++) {
			%>

			<%
			if (request.getParameter("check" + i).equals("false")) {
				point-=1;
			%>
			<td><%=i%></td>
			<%
			}
		}
		%>
		<td></td>
		</tr>
	</table>
	
		<table border>
	<tr><td>
		得点変動
	</td><td>
		<%=(double)point/10%>点
	</td></tr>
	</table>
	＜コメント＞
	<table border>
	<tr><td>
		<%=request.getParameter("comment_id")%>番
	</td><td>
		<%=request.getParameter("comment")%>
	</td></tr>
	</table>
	<form action="contact-servlet">
		<input type="submit" value="確定">
	</form>
	<form action="contact-display-servlet" method="post">
		<input type="submit" value="戻る">
	</form>
</body>
</html>