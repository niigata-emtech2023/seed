<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>得点項目登録画面</title>
</head>
<body>
    &lt;登録&gt;
    <form action = "adminselect.jsp" method = "POST">
        <input type = "submit" value = "メニューに戻る">
    </form>
    
    <jsp:useBean id="insert" class="model.entity.SpoFesBean" scope="session"/>
    <form action = "insertconfirmation.jsp" method = "POST">
    ・内容<br>
        <textarea name = "task_info" cols ="50" rows = "3">
        <jsp:getProperty name="insert" property="task_info" />
        
        </textarea>
        
        <input type = "submit" value = "登録">
        
    </form>

</body>
</html>