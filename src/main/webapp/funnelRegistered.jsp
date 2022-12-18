<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/30
  Time: 0:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
		 pageEncoding="UTF-8"%>
<html>
<head>
	<style>
		body {
			background: linear-gradient(white, mediumpurple);
			background-size: cover;
			font-family: sans-serif;
			text-align: center;
		}
		h1{
			font-size: 300%;
		}

		p1 {
			font-size: 200%;
		}

		p2{
			font-size: 200%;
			padding: 0.5em 1em;
			margin: 2em 0;
			color: #2c2c2f;
			background: #cde4ff;
		}

		button {
			font-size: 250%;
			margin: 25% auto;
			width: 250px;
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
	<title>funnelRegistered</title>
</head>
<body>
<h1>葬儀情報が正常に登録されました！</h1>
<p1>招待者の方に以下のURLを送ってください。</p1>
<br>
<br>
<p2
		href="http://localhost:8080/Ceregement/EmailRegister?regNumber=1&ceregementId=
		<%=session.getAttribute("id")%>">http://localhost:8080/Ceregement/EmailRegister?regNumber=1&ceregementId=
	<%=session.getAttribute("id")%></p2>
<br>
<button type="button" name="menu">
	<a href="OrganizerSelection">メニューへ</a>
</button>
</body>
</html>
