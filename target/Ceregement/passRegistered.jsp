<<<<<<< HEAD
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
=======
<%-- Created by IntelliJ IDEA. User: ataru Date: 2022/11/26 Time: 20:11 To change this template use File | Settings |
    File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.model.user.User"%>
<%
String email = ((User) session.getAttribute("newUser")).getMailAddress();
String password = ((User) session.getAttribute("newUser")).getPassword();
%>
<html>

<head>
<<<<<<< HEAD

  <style>
    body {
      background: linear-gradient(white, mediumpurple);
      background-size: cover;
      font-family: sans-serif;
      text-align: center;
    }

    .button {
      margin: 25% auto;

      width: 200px;
      height: 60px;
      border: 2px solid #000;
      border-radius: 0;
      background: #fff;
      -webkit-box-shadow: 4px 4px 0 #000;
      box-shadow: 4px 4px 0 #000;
    }

    .button:hover {
      -webkit-box-shadow: -10px -4px 0 #000;
      box-shadow: -10px -4px 0 #000;
    }


  </style>

    <title>passRegistered</title>
=======
<title>passRegistered</title>
>>>>>>> master
</head>

<body>
	<h1>パスワード登録完了画面</h1>
	<br>
	<p>
		パスワードを登録しました<br>
	</p>
	<p>トップページに戻り、ログインを行ってください。</p>
	<p>
		ID(メールアドレス):<%=email%>
	</p>
	<p>
		パスワード:<%=password%>
	</p>
	<div class="button">
		<a href="./login.jsp">ログイン画面へ</a>
	</div>
</body>

</html>
>>>>>>> c99d19d98d8a12d935bcda4dba83a5f1a8ee0c63
