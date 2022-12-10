<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/26
  Time: 20:23
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
            text-align: center;
        }
        a {
            font-size: 250%;
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

        a:hover {
            -webkit-box-shadow: -10px -4px 0 #000;
            box-shadow: -10px -4px 0 #000;
        }
    </style>
    <title>organizerSelection</title>
</head>
<body>
  <h1>選択してください</h1>
  <div class="button">
      <a href="FunnelRegister">葬儀の計画</a>
      <a href="OrganizerReadingSelection">葬儀の閲覧</a>
      <a href="Login">ログアウト</a>
  </div>
</body>
</html>
