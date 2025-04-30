<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
  <div style="border: 1px solid gray; padding: 10px;">
    <% String currentYear = new SimpleDateFormat("yyyy").format(new Date());%>
    Copyright ⓒ2000-<%=currentYear%> KSH life <br>

    해당 페이지로 전달ㄹ되는 파라뮈터월 : <%=request.getParameter("message")%>
  </div>
</body>
</html>
