<%@ page import="com.model.User" %><%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/20
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

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

</head>
<body>
<%
  if (session.getAttribute("login") == null || !(Boolean) session.getAttribute("login")) {
    response.sendRedirect("login.jsp");
  }
%>
<p>ようこそ　(ユーザID: <%= ((User) session.getAttribute("user")).getMailAddress()%> </p>
<p>
  <a href="Logout">ログアウト</a>
</p>
</body>
</html>
