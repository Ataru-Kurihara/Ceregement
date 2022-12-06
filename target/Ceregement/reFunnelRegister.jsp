<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/29
  Time: 15:50
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

        a {
            margin: 25% auto;

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

    <title>reFunnelRegister</title>
</head>
<body>
    <h1>登録内容確認画面</h1>
    <p1>以下の内容でよろしければ、「登録する」ボタンを押してください</p1>
    <button type="button" name="revision">
        <a href="FunnelRegister">修正</a>
    </button>
    <button type="button" name="registaration">
        <a href="FunnelRegistered">登録</a>
    </button>
</body>
</html>
