<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/20
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>login</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
    if (session.getAttribute("login") != null && !(Boolean)session.getAttribute("login")) {
    %>
            <p>ユーザ名またはパスワードが違います</p>
    <%
    }
    %>
<p>ログインします</p>
<form action="Login" method="post">
    <dl>
        <dt>ユーザID(メールアドレス)</dt>
        <dd><label>
            <input type="text" name="mailAddress" />
        </label></dd>
        <dt>パスワード</dt>
        <dd><label>
            <input type="password" name="passWord" />
        </label></dd>
    </dl>
    <button type="submit" name="login">ログイン</button>
</form>
<div class="button">
    <a href="./emailRegister.jsp">新規登録</a>
</div>
</body>
</html>
