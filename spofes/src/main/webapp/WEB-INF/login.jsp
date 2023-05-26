<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン</title>
</head>
<body>
『Spofes』を始めよう！
<form action="login-servlet" method="POST">
ID<br>
<input type="text" name="id"><br>
パスワード<br>
<input type="password" name="pass"><br>
<input type="submit" value="ログイン"><br>
<a href ="/login-servlet">管理者の方はこちら</a>
</form>
</body>
</html>