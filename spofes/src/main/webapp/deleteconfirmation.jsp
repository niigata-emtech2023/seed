<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録項目削除確認画面</title>
</head>
<body>
    <%
    request.setCharacterEncoding("UTF-8");
    %>
    
    &lt;削除&gt;
    <br>
        本当に削除しますか?
    <br>
    
    <jsp:useBean id="delete" class="model.entity.SpoFesBean" scope="session"/>
        内容<br>
        <jsp:setProperty name="delete" property="task_info" param="task_info" />
        
        
        <jsp:getProperty name="delete" property="task_info" /><br>
 
    
    <form action = "adminmenu.jsp" method = "POST">
        <input type = "submit" value = "戻る">
    </form>
    
    <form action = "Delete-servlet" method = "POST">
        <input type = "submit" value = "削除">
    </form>

</body>
</html>