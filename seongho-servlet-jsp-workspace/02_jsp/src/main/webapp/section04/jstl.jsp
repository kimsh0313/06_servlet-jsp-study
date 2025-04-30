<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h2>JSTL core Library</h2>

<h3>변수(==JSP내장객체의 attribute)</h3>
<c:set var="num1">10</c:set> <!--pageContext.setAttribute("num1" , "10 ")-->
<c:set var="num2" value="20" scope="request"/><!--request.setAttribute("num2" , "20")-->
num1 : ${num1} ,${ pageScope.num1} <br>
num2 : ${num2} , ${requestScope.num2} <br>

<c:set var="result" value="${num1 + num2  }" scope="session"></c:set>
${result}, ${sessionScope.result}

<!--자주 사용되는 c:set-->
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
contextPath값: ${contextPath} <br>
<a href="${contextPath}/el">el화긴</a> <br>

<c:remove var="result" scope="session"/>
삭제 후result 값: ${result} <br>

result 값 : <c:out value="${result}" default="없음"/> <br>

<c:set var="outTest" value="<b> 출력테스트 </b>"/>
outTest 값 : <c:out value="${outTest}"/> <br>
outTest 값 : <c:out value="${outTest}" escapeXml="false"/> <br>

<h3>2 조건문</h3>

<!--num1이 num2보다 작거나 같을 경우 특정요소가 보여지도록-->

<c:if test="${num1 <= num2}">
  <b>num1이 num2보다 작거나 같다</b>
</c:if>

<c:set var="str" value="안녕"/>

<c:if test="${str == '안녕'}">
  <b>안녕하세요</b>
</c:if>

<c:if test="${str != '안녕'}">
  <b>안녕하세요</b>
</c:if>

<c:choose>
  <c:when test="${num1>9}">
    <p>hi</p>
  </c:when>
  <c:when test="${num1>=11}">
    <p>hello</p>
  </c:when>
  <c:otherwise>
    <p>hihi</p>
  </c:otherwise>
</c:choose>

<hr>

<h3>반보크문</h3>
<c:forEach var="i" begin="1" end="10" step="2">
  <i>반보크 확인 : ${i}</i>
</c:forEach>

<c:forEach var="i" begin="1" end="6">
  <h${i}>${i}</h${i}>
</c:forEach>

<ul>
  <c:forEach var="color" items="${colors}">
  <li style="color: ${color}">${color}</li>
  </c:forEach>
</ul>

<table border="1">
  <thead>
    <tr>
      <th>번호</th>
      <th>이름</th>
      <th>나이</th>
      <th>성별</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="p" items="${list}" varStatus="sta">
      <tr>
        <td>인덱스:${sta.index} ,순번 :${sta.count}</td>
        <td>${p.name}</td>
        <td>${p.age}</td>
        <td>${p.gender}}</td>
      </tr>
    </c:forEach>
  </tbody>
</table>


<ol>
  <c:forTokens var="d" items="${device}" delims=",./">
    <li>${d}</li>
  </c:forTokens>

  <h4>url 제작스</h4>
  <a href="${contextPath}/test?name=홍크길크동&age=10">기존방크싁 직접작크성</a> <br>
  <a href="<c:url value="/test?name=홍크길크동&age=10"/>">c:url을 바로사용크 방크식</a>
  <c:url var="mkurl" value="/test">
    <c:param name="name" value="홍크길크도응"/>
    <c:param name="age" value="10"/>
  </c:url>
  <a href="${mkurl}">c:url로 만들어둔거 사용</a>
</ol>





</body>
</html>
