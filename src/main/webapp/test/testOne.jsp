<%--
  Created by IntelliJ IDEA.
  User: seokjunkang
  Date: 2023/08/02
  Time: 9:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h2 id="hTitle"></h2>
    <hr>

    <div id="fdiv"></div>

    <a id="a1" href="javascript:;" data-store-code="01">클릭 테스트 1</a>
</body>
</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    // Ready
    $(function (){
        const name = "Ready To Load";

        $("#hTitle").text(name); // h2 에 text 삽입

        // inner html
        var divId = document.getElementById('fdiv');
        divId.innerHTML = "<a id='clickAT' href='javascript:;'>Inner A Tag</a>";
        document.getElementById('clickAT').addEventListener('click', clickA)

        // 클릭 테스트 1번 이벤트.
        document.getElementById('a1').addEventListener('click', function(event) {
            event.preventDefault(); // 클릭 이벤트의 기본 동작(링크 이동)을 막음
            var storeCode = this.getAttribute('data-store-code');
            alert('Clicked! Store Code: ' + storeCode);
        });
    })

    function clickA() {
        alert("Click A Tag");
    }
</script>
