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
			font-size: 100%;
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
		h1{
			font-size: 300%;
		}
		h2{
			font-size: 200%;
		}
		dt{
			font-size: 100%;
		}
		p{
			border: 2px red solid;
			font-weight: bold;
			font-size: 150%;
			color: red;
		}
	</style>

	<title>passRegister</title>

	<meta charset="UTF-8">
	<title>passRegister</title>

</head>

<body>

<h1>アカウントを登録します</h1>
<h2>
	あなたのidは:<%=id%>です
</>
<%
	if (session.getAttribute("pass") != null && !(Boolean) session.getAttribute("pass")
			&& request.getAttribute("passError") != null) {
		out.println("<p>");
		out.println(request.getAttribute("passError"));
		out.println("</p>");
%>
<script type="text/javascript">
	const msg = '<%= request.getAttribute("passError")%>';
	alert(msg)
</script>
<%
	}
%>
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