<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/26
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String email = (String)request.getAttribute("email");
  String newPassWord = (String) request.getAttribute("newPassWord");
%>
<html>
<head>
    <title>passRegistered</title>
</head>
<body>
  <h1>パスワード登録完了画面</h1>
  <br>
  <p>パスワードを登録しました<br></p>
  <p>トップページに戻り、ログインを行ってください。</p>
  <p>ID(メールアドレス):<%=request.getAttribute("email")%></p>
  <p>パスワード:<%=request.getAttribute("pass")%></p>
  <div class="button">
    <a href="Login">ログイン画面へ</a>
  </div>
</body>
</html>