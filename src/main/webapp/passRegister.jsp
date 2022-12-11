<%-- Created by IntelliJ IDEA. User: ataru Date: 2022/12/01 Time: 15:27 To change this template use File | Settings |
    File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.model.tempUser.TempUser"%>
<html>
<%
String id = ((TempUser) session.getAttribute("temp")).getEmail();
%>

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

<meta charset="UTF-8">
<title>passRegister</title>

</head>

<body>

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

</body>

</html>