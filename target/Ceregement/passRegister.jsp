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
        p {
            font-size: 300%;
        }
		h1{
			font-size: 250%;
		}
       button {
		   font-size: 250%;
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
    </style>

<title>passRegister</title>

<meta charset="UTF-8">
<title>passRegister</title>

</head>

<body>

	<p>アカウントを登録します</p>
	<h1>
		あなたのidは:<%=id%>です

	</p>
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
	</h1>
	<form action="PassRegister" method="post">
		<dl>
			<dd>
			<dt>パスワード <input type="password" name="password" /></dt>
			</dd>
		</dl>
		<button type="submit" name="passRegister">登録</button>
	</form>

</body>

</html>