<%-- Created by IntelliJ IDEA. User: ataru Date: 2022/11/26 Time: 20:06 To change this template use File | Settings |
    File Templates. --%>
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
            font-size: 250%;
        }

        p {
            font-size: 200%;
        }

        button {
            margin: 25% auto;

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
        a {
            font-size: 250%;
            display: block;
            margin: auto;
            position: relative;
            aligin: center;
            width: 550px;
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


    <head>
        <title>emailRegistered</title>
    </head>
<body>
<p>
    メールが送信されました。<br> メールに記載のURLからログインし, 登録を完了させてください。
</p>
<a href="emailRegister.jsp">メールアドレス入力画面へ</a>
</body>

</html>