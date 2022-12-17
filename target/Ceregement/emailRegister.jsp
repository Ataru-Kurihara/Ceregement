<%-- Created by IntelliJ IDEA. User: ataru Date: 2022/11/26 Time: 20:00 To change this template use File | Settings |
    File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>emailRegister</title>
    <Style>
        body {
            background: linear-gradient(white, mediumpurple);
            background-size: cover;
            font-family: sans-serif;
            text-align: center;
        }

        h1 {
            font-size: 300%;
            text-align: center;
        }

        h2 {
            font-size: 200%;
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

        button {
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

        button:hover {
            -webkit-box-shadow: -10px -4px 0 #000;
            box-shadow: -10px -4px 0 #000;
        }

        p{
            border: 2px red solid;
            font-weight: bold;
            font-size: 300%;
            color: red;
        }
    </Style>
</head>

<body>
<h1>入力してください</h1>
<%
    if (session.getAttribute("email") != null && !(Boolean) session.getAttribute("email")
            && request.getAttribute("error") != null) {
%>
<p>
    <%
        out.println(request.getAttribute("error"));
    %>
</p>
<%
    }
%>
<ul>
    <h2>新しく登録するメールアドレスを入力してください。</h2>
    <h2>ご入力いただいたメールアドレス宛てにパスワード登録フォームのURLが届きます。</h2>
</ul>
<form action="EmailRegister" method="post">
    <h3>ID(メールアドレス)
        <input type="text" name="email" placeholder="xxx@example.com">
    </h3>
    <button type="submit" name="EmailRegister">送信</button>
</form>
<div class="button">
    <a href="login.jsp">戻る</a>
</div>
</body>
</html>