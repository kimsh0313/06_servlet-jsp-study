<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
  <title>Title</title>
</head>
<body>

<h2>jsp:include</h2>
<p>다른 페이지를 포함하고자 할 때 사용되는 태그</p>

<%--<h4>기존 include( 정적 인클루드 방식)</h4>--%>
<%--<%@include file="common.jsp"%>--%>
<%--<br>--%>
<%--특징: include하는 jsp상에 선언된 변수를 현재 페이지에서도 사용 가능 <br>--%>
<%--currentYear : <%=currentYear%> <br> <br>--%>
<%--단, 현재 페이지에서 동일한 이름의 변수를 재선언 할 수 없당 <br>--%>

<h4>표준 액션 태그 include방시익 (동적 include방싁</h4>
<!--반드시 종료태그까지 존재해야 됨-->
<jsp:include page="common.jsp"/>
<br>
특징1: include하는 jsp상 선언된 변수를 현재 페이지에서 사용 불!갈! (재선언 가능) <br>
<%--currentYear : <%=currentYear%>--%>
특징2: include시 해당 jsp로 값을 전달해 동적으로 표현 가능 <br>
<jsp:include page="common.jsp">
  <jsp:param name="message" value="hello"/>
</jsp:include>

<hr>

<h2>jsp:forward</h2>
<p>다른 페이지로 바로 포워딩하고자 할ㄸ ㅐ</p>

<% int random = (int)(Math.random()*10 + 1);%>
<%if (random >= 5) {%>
  <jsp:forward page="/section01/common.jsp"/>
<%}else{%>
  <jsp:forward page="/section02/common.jsp">
    <jsp:param name="message" value="키키키"/>
  </jsp:forward>
<%}%>

<!--포워딩된 페이지가 뜨긴 하나 url에는 /asdfsa/standard-action-tag 찍혀있땅-->
</body>
</html>
