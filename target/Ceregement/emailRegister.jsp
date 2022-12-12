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

<title>emailRegister</title>
</head>

<body>
    <h1>入力してください</h1>
    <ul>
        <p>新しく登録するメールアドレスを入力してください。</p>
        <p>ご入力いただいたメールアドレス宛てにパスワード登録フォームのURLが届きます。</p>
    </ul>
    <form method="get" action="Output">
        <label>
            <input type="text" name="email">
        </label>
        <div class="button">
            <p>ID(メールアドレス)</p>
            <a href="EmailRegistered">送信</a>
        </div>
    </form>
    <div class="button">
        <a href="Login">戻る</a>
    </div>
 </body>

</html>