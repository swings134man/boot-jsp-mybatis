<%--
  Created by IntelliJ IDEA.
  User: seokjunkang
  Date: 2023/04/09
  Time: 5:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Board 상세 페이지</title>
</head>
<body>
    <h1>게시판 상세 페이지</h1>

    <div class="table-board1" align="center">
        <table border="1">
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>조회수</th>
            </tr>

                <tr>
                    <th>${board_no}</th>
                    <th>${board_title}</th>
                    <th>${board_writer}</th>
                    <th>${board_count}</th>
                </tr>

        </table>
    </div>

</body>
</html>
