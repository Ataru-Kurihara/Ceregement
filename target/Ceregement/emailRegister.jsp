<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/26
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>emailRegister</title>
</head>
<body>
    <p>入力してください</p>
    <form method="get" action="Output">
        <input type="text" name="email">
        <div class="button">
            <p>ID(メールアドレス)</p>
            <a href="./emailRegisterd.jsp">送信</a>
        </div>
    </form>
    <div class="button">
        <a href="./login.jsp">戻る</a>
    </div>
</body>
</html>
