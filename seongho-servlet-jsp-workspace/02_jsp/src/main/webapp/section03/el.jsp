<%@ page import="com.ksh.jsp.dto.PersonDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<%--<h3>기존방식 (JSP 표현식</h3>--%>
<%--<%--%>
//  String croom = (String) request.getAttribute("classroom");
//  PersonDto stu = (PersonDto) request.getAttribute("student");
//  PersonDto tea = (PersonDto) request.getAttribute("teacher");
//  String aca = (String) request.getAttribute("academy");

<%--%>--%>
<%--<p>--%>
<%--  학원명:<%=aca%>--%>
<%--  강의장:<%=croom%>--%>
<%--  강사정보:<%=tea.getAge()%>,<%=tea.getName()%>,<%=tea.getGender()%>--%>
<%--  학생정보:<%=stu.getAge()%>,<%=stu.getName()%>,<%=stu.getGender()%>--%>
<%--</p>--%>
<h3>EL 방식</h3>
<p>
  학원명: ${academy}
  강의장: ${classroom}
  강사정보: ${teacher.name},${teacher.age},${teacher.gender}
  학생정보: ${student.name},${student.age},${student.gender}
</p>
<hr>
<h2>EL 특징</h2>
중복된 attribute : ${ scope } <br>
gageScope 접근 : ${pageScope.scope}<br>
requestScope 접근 : ${requestScope.scope} <br>
sessionScope 접근 : ${sessionScope.scope} <br>
applicationScope 접근 : ${applicationScope.scope} <br>
존재 x attribute : ${test}, ${test.alds}

<hr>
<h3>EL 연산자</h3>
<h4>산술</h4>
기존 JSP + : <%= (int)request.getAttribute("big") + (int)request.getAttribute("small")%>
<h5>EL 방식</h5>
+: ${big+small}<br>
-: ${big-small}<br>
*: ${big*small}<br>
/: ${big/small} , ${big div small}<br>
%: ${big%small} , ${big mod small}<br>
<!--el 내에서 산술연산자 작성시 피연산자들을 부조건 숫자형으로 형변환해서 처리함-->
<h5>유의사항: 문자열을 연이어주고자 할때 + 사용 불!가!능! </h5>
<%--${str1 + str2} > NumberFormatException발생--%>
일케 : ${str1}${str2}

<h4>대소비교옹</h4>
작노 &lt; :${big < small} , ${big lt small} <br>
크노 &gt; :${big > small} , ${big gt small} <br>
작같 &lt;= :${big <=small} , ${big le small} <br>
크같 &gt;= :${big >= small} , ${big ge small} <br>

<h4>동등비교연산</h4>
${big==10} ,${big eq 10} <br>
${str1==str2}, ${str1 eq str2} <br>
${str1 == str3}, ${str1 eq str3} <br>
${str3 == "bye"} , ${str3 eq "bye"}
<br> <br>

${big!=10} ,${big ne 10} <br>

<h4>4 객체가 null인지 list가 비어있는지</h4>
${book1 == null} , ${empty book1}<br>
${book2 == null} , ${empty book2}<br>

${empty list1} <br>
${empty list2} <br>


${not empty list1 } , ${! empty list1}

${big gt small and empty list2}

</body>
</html>
