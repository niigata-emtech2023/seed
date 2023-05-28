<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>得点項目登録確認画面</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>
    <jsp:useBean id="task" class="model.entity.SpoFesBean" scope="session"/>
    
    &lt;登録確認画面&gt;
    <br>
        これでよろしいですか
    <br>
    
    <jsp:useBean id="insert" class="model.entity.SpoFesBean" scope="session"/>
        内容<br>
        <jsp:setProperty name="insert" property="task_info" param="task_info" />
        
        
        <jsp:getProperty name="insert" property="task_info" /><br>
 
    
    <form action = "insert.jsp" method = "POST">
        <input type = "submit" value = "戻る">
    </form>
    
    <form action = "Insert-servlet" method = "POST">
        <input type = "submit" value = "確定">
    </form>
    

</body>
</html>