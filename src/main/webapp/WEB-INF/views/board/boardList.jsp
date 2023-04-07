<%--
  Created by IntelliJ IDEA.
  User: seokjunkang
  Date: 2023/04/07
  Time: 6:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Board List</title>
</head>
<body>
  <h1>Board List Page</h1>
    <h3>조건 없이 List 데이터만 가져옴.</h3>

    <div class="table-board1" align="center">
        <table border="1">
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>조회수</th>
            </tr>

            <c:forEach items="${boardList}" var="board">
                <tr>
                    <th>${board.board_no}</th>
                    <th>${board.board_title}</th>
                    <th>${board.board_writer}</th>
                    <th>${board.board_count}</th>
                </tr>
            </c:forEach>

        </table>
    </div>
</body>
</html>
