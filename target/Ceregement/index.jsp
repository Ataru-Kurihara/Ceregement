<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/25
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
 <!DOCTYPE html>
<head>
    <title>Ceregement</title>
    <style>
        body {
            background: linear-gradient(white, mediumpurple);
            background-size: cover;
            font-family: sans-serif;
            text-align: center;
        }

        .button {
            display: block;
            margin: auto;
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

        .button:hover {
            -webkit-box-shadow: -10px -4px 0 #000;
            box-shadow: -10px -4px 0 #000;
        }
        a{
            font-size: 250%;
            text-align: center;
        }
        h1{
            font-size: 900%;
            text-align: center;
        }
        h2{
            font-size: 300%;
            text-align: center;
        }
    </style>
</head>

<body>
<h1>Ceregement</h1>
<h2>お別れの時間を有意義に過ごすお手伝いをします!</h2>
<div class="button">
    <a href="login.jsp">ログイン</a>
</div>
</body>
</html>
