<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログアウト</title>
</head>
<body>
ログアウトしますか？<br>
<form action="select.jsp">
<input type="submit" value="戻る">
</form>
<form action="logout-servlet"method="post">
<input type="submit" value="ログアウト">
</form>
</body>
</html>