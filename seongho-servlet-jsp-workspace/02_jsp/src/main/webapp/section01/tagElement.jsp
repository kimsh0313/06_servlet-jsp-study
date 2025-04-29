<%@ page import="com.ksh.jsp.dto.BookDto" %>
<%@ page import="java.awt.print.Book" %>
<%@ page import="com.ksh.jsp.dto.PersonDto" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" errorPage="error500.jsp" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
  <!-- HTML -->
  <%--JSP ,F12 확인 불가--%>
<%!
  public int getRandom(){
      return (int)(Math.random() * 100 + 1);
  }
%>
<%
  int sum = 0;
  int random = getRandom();
  for (int i=1; i<=random; i++){
      sum +=i;
  }
  System.out.println(sum);
%>
  <!--out : jspWriter화면-->
<b><% out.println(sum); %> < 덧셈결과</b>
<%if (sum>= 3000){%>
<i>3000보다크다</i>
  <%}else{%>
  <i>3000보다작다</i>
<%}%>
<br><br>
<b>덧셈결과 : <%=sum%></b>
<hr>
<!--jsp 내장객체에 담은 attribute 꺼내기-->
<%
  BookDto bk = (BookDto) request.getAttribute("book");
  List<PersonDto> list = (List<PersonDto>)session.getAttribute("list");
  String academy = (String) application.getAttribute("academy");
%>

  기관명 : <%=academy%>
  책정보 : <%=bk.getTitle()%> , <%=bk.getAuthor()%> , <%=bk.getNo()%>
  사람들
  <table border="1">
    <%for (PersonDto p : list){%>
    <tr>
      <td><%=p.getName()%></td>
      <td><%=p.getAge()%></td>
      <td><%=p.getGender()%></td>
    </tr>
    <%}%>
  </table>
<%@include file="common.jsp"%>


</body>
</html>
