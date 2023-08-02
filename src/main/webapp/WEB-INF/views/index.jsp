<%--
  Created by IntelliJ IDEA.
  User: seokjunkang
  Date: 2023/04/07
  Time: 5:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
//        <jsp:forward page="board/BoardInsert.jsp" />
%>
<html>
<head>
    <title>home</title>
</head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
    $(function (){

    });
</script>
<body>
    <h1>Home Page</h1>
        <p>Server Time = ${serverTime}</p>
    <hr>

    <%--  Server URL 로 이동.  --%>
    <%--  Server 가 Redirect 해주는 페이지  --%>
    <%--  webapp/WEB-INF/ 아래에 가능 설정에 따라 여기선, /views아래에서 가능.  --%>
    <a href="/list">리스트 테스트 페이지</a>

    <hr>
    <%--  webapp 안에 있는 jsp 로 이동  --%>
    <%--  서버를 거치지 않고 사용자가 직접 접근할 수 있음.  --%>
    <a href="http://localhost:8080/board/BoardInsert.jsp">게시판 작성 - fetch 방식</a><br>
    <a href="http://localhost:8080/board/boardInsert2.jsp">게시판 작성 - form 태그 방식</a>

    <hr>
    <a href="http://localhost:8080/test/testOne.jsp">Test One</a>

</body>
</html>
