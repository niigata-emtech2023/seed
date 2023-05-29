<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"import="model.entity.SpoFesBean,java.util.List"%>
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
    
    &lt;登録確認画面&gt;
    <br>
        これでよろしいですか
    <br>
    
    <%
	SpoFesBean spofes = (SpoFesBean)request.getAttribute("spofes");
	%>
        内容<br>
        <%=spofes.getTaskName() %><br>
        
        <%
        spofes.setTaskName(spofes.getTaskName());
        %>
 
    
    <form action = "insert.jsp" method = "POST">
        <input type = "submit" value = "戻る">
    </form>
    
    <form action = "Insert-servlet" method = "POST">
        <input type = "submit" value = "確定">
    </form>
    

</body>
</html>