<%--
  Created by IntelliJ IDEA.
  User: seokjunkang
  Date: 2023/04/09
  Time: 5:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<html>
<head>
    <title>Board Insert</title>
</head>

<script>
    // JQuery
    $(function(){

        // Post : Body
        $('#submitBtn').click(function (){
            console.log("버튼 클릭함.");

            // fetch
            const url = '/board/v1/savePost';
            fetch(url, {
                method: 'POST',
                headers: {
                    "Content-type": "application/json"
                },
                body: JSON.stringify({
                    board_title: $('#title').val(),
                    board_content: $('#content').val(),
                    board_writer: $('#writer').val(),
                    board_count: 0
                })//body
            })
            .then(res => {
                if(res.status === 200){
                    console.log("success");
                    console.log(res.json());
                }
            })
            .catch(err => console.log("fail"))
        });

    });//function
</script>

<body>
    <h1>게시판 작성 Page</h1>


    제목: <input type="text" id="title" /> <br>
    내용: <input type="text" id="content" /><br>
    작성자: <input type="text" id="writer" /><br>

    <input type="button" value="작성하기" id="submitBtn">

</body>
</html>
