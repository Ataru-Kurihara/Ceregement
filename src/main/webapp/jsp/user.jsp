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
