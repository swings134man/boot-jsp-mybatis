<%--
  Created by IntelliJ IDEA.
  User: seokjunkang
  Date: 2023/04/10
  Time: 3:44 AM

    Form 태그를 이용하여 POST 요청 전송 - BoardDTO
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<html>
<head>
    <title>Board Insert 2</title>
</head>
<body>
    <h1>게시판 작성 2번째 페이지 - form</h1> <br>

    <form method="post" action="/board/v1/save2">
        제목: <input type="text" name="board_title" /> <br>
        내용: <input type="text" name="board_content" /><br>
        작성자: <input type="text" name="board_writer" /><br>
        <button id="btn1" type="submit">작성하기</button>
    </form>
</body>
</html>
