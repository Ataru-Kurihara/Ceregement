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
    <style>
        body {
            background: linear-gradient(white, mediumpurple);
            background-size: cover;
            font-family: sans-serif;
            text-align: center;
        }
        p{
            font-size: 300%;
            text-align: center;
        }
        dt{
            font-size: 200%;
            text-align: center;
        }
        h1 {
            font-family: 'Homemade Apple', cursive;
            font-size: 800%;
            color: black;
            text-align: center;
        }

        a {
            font-size: 250%;
        }

        button {
            font-size: 250%;
            position: relative;
            aligin: center;
            width: 200px;
            height: 60px;
            border: 2px solid #000;
            border-radius: 0;
            background: #fff;
            -webkit-box-shadow: 4px 4px 0 #000;
            box-shadow: 4px 4px 0 #000;
        }

        button:hover {
            -webkit-box-shadow: -10px -4px 0 #000;
            box-shadow: -10px -4px 0 #000;
        }

        .button {
            margin: auto;
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
    if (request.getAttribute("login") != null && !(Boolean) request.getAttribute("login")) {
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
            <input type="text" name="mailAddress"/>
        </label></dd>
        <dt>パスワード</dt>
        <dd><label>
            <input type="password" name="passWord"/>
        </label></dd>
    </dl>
    <button type="submit" name="login">ログイン</button>
</form>
<div class="button">
    <a href="emailRegister.jsp">新規登録</a>
</div>
</body>
</html>
