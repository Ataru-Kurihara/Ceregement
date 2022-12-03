<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/20
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<head>
    <title>login</title>
</head>
<body>
<%
    if (session.getAttribute("login") != null && !(Boolean)session.getAttribute("login")) {
        System.out.println("<p>ユーザ名またはパスワードが違います</p>");
    }
%>
<p>ログインします</p>
<form action="Login" method="post">
    <dl>
        <dt>ユーザID(メールアドレス)</dt>
        <dd><input type="text" name="メールアドレス" /></dd>
        <dt>パスワード</dt>
        <dd><input type="password" name="password" /></dd>
    </dl>
    <button type="submit" name="login">ログイン</button>
</form>
</body>
</html>
