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

            position: absolute;
            top: 0;
            left: 0;
            z-index: 1;
            width: 100%;
            height: 100%;

            background: linear-gradient(to bottom, #a6d900 0%, #ff4454 100%);
            opacity: 0.5;
            animation: huerotator 3s infinite alternate;


        font-family:sans-serif;
        text-align:center;

        }
        @keyframes huerotator {
            0% {
                -webkit-filter: hue-rotate(0deg);
                filter: hue-rotate(0deg);
            }

            100% {
                -webkit-filter: hue-rotate(360deg);
                filter: hue-rotate(360deg);
            }
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

        button{

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
    <a href="EmailRegister">新規登録</a>
</div>
</body>
</html>
