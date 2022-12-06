<%-- Created by IntelliJ IDEA. User: ataru Date: 2022/12/01 Time: 15:27 To change this template use File | Settings |
    File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.model.tempUser.TempUser"%>
<html>
<%
String id = ((TempUser) session.getAttribute("temp")).getEmail();
%>

<head>
<<<<<<< HEAD

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
       button {
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
    </style>

    <title>passRegister</title>
=======
<meta charset="UTF-8">
<title>passRegister</title>
>>>>>>> master
</head>

<body>
<<<<<<< HEAD
<h1>パスワード新規登録</h1>
<p1>エラーメッセージ</p1>
<h2>新しいパスワード</h2>
<input type="text" name="pass">
<h2>新しいパスワード(確認用)</h2>
<input type="text" name="rePass">
<br>
<p2>(注意)パスワードに使える文字は半角数字とアルファベットです。</p2>
<br>
<p2>アルファベットは大文字、小文字の区別はありません。</p2>
<br>
<p2>パスワードは8文字以上16文字以下を指定してください。</p2>
<br>
<p2>★内容を確認したら「登録」ボタンを押してください</p2>
<br>
<button type="button" name="registration">
    <a href="PassRegistered">登録</a>
</button>
=======
	<p>アカウントを登録します</p>
	<p>
		あなたのidは:<%=id%>です
	</p>
	<form action="PassRegister" method="post">
		<dl>
			<dt>パスワード</dt>
			<dd>
				<input type="password" name="password" />
			</dd>
		</dl>
		<button type="submit" name="passRegister">登録</button>
	</form>
>>>>>>> master
</body>

</html>