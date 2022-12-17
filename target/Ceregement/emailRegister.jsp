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

h1 {
	font-size: 300%;
	text-align: center;
}

li {
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

<<<<<<< HEAD
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
	if (session.getAttribute("email") != null && !(Boolean) session.getAttribute("email")
			&& request.getAttribute("error") != null) {
		%>
	<script type="text/javascript">
		const msg = '<%= request.getAttribute("error")%>';
		alert(msg)

	</script>
	<%
	}
	%>

	<ul>
		<li>新しく登録するメールアドレスを入力してください。</li>
		<li>ご入力いただいたメールアドレス宛てにパスワード登録フォームのURLが届きます。</li>
	</ul>
	<form action="EmailRegister" method="post">
		<p>ID(メールアドレス)</p>
		<input type="text" name="email" placeholder="xxx@example.com">
		<button type="submit" name="emailRegistered">送信</button>
	</form>
	<div class="button">
		<a href="Login">戻る</a>
	</div>

=======
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
>>>>>>> master
</body>

</html>