<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.SpoFesBean,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録結果</title>
</head>
<body>
	<%
	List<SpoFesBean> taskList = (List<SpoFesBean>) request.getAttribute("taskList");
	List<SpoFesBean> teamList = (List<SpoFesBean>) request.getAttribute("teamList");
	int result=(Integer)request.getAttribute("count");
	int point = 0;
	if(result>0){%>
		登録完了しました
	<%
	}
	%>

	<%=request.getParameter("team_name")%>
	
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
	
	<form action="select.jsp" method="post">
		<input type="submit" value="メニューに戻る">
	</form>
</body>
</html>