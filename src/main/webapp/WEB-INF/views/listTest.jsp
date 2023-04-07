<%--
  Created by IntelliJ IDEA.
  User: seokjunkang
  Date: 2023/04/07
  Time: 5:18 PM
  To change this template use File | Settings | File Templates.

  ->> use JSTL
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Test Page</title>
</head>
<body>
    <h1>List Test Page</h1>

    <div class="container">
        <table border="1">
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
            </tr>

            <c:forEach items="${list}" var="post">
                <tr>
                    <th>${post.postId}</th>
                    <th>${post.postTitle}</th>
                    <th>${post.postWriter}</th>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>
