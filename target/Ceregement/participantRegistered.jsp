<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/12/03
  Time: 23:35
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
        h1{
            font-size: 300%;
        }
        button{
            font-size: 250%;
            position: relative;
            aligin: center;
            width: 250px;
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
    </style>

    <title>participantRegistered</title>
</head>
<body>
<h1>参列者情報が正常に登録されました！</h1>
<br>
<button type="button" name="menu">
    <a href="ParticipantSelection">メニューへ</a>
</button>
</body>
</html>
