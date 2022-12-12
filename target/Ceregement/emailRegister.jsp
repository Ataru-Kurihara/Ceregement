<%-- Created by IntelliJ IDEA. User: ataru Date: 2022/11/26 Time: 20:00 To change this template use File | Settings |
    File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<html>

<head>
<Style>
body {
	background: linear-gradient(white, mediumpurple);
	background-size: cover;
	font-family: sans-serif;
	text-align: center;
}

a {
	font-size: 250%;
	width: 300px;
	height: 100px;
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
</Style>
<html>
<Style>
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
	li{
		font-size: 200%;
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
</Style>
<head>
<title>emailRegister</title>
</head>

<body>
	<h1>入力してください</h1>
	<%
	if (session.getAttribute("email") != null && !(Boolean) session.getAttribute("email")) {
		out.println("<p>入力したemailはすでに登録されています。</p>");
		out.println("<p>または空白です。</p>");
	}
	%>
	<ul>
		<li>新しく登録するメールアドレスを入力してください。</li>
		<li>ご入力いただいたメールアドレス宛てにパスワード登録フォームのURLが届きます。</li>
	</ul>
	<form action="EmailRegister" method="post">
		<p>ID(メールアドレス)</p>
		<input type="text" name="email">
		<button type="submit" name="emailRegistered">送信</button>
	</form>
	<div class="button">
		<a href="/Login">戻る</a>
	</div>
</body>
</html>