<%@ page import="com.model.TempUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<%
String id = ((TempUser) session.getAttribute("temp")).getEmail();
%>
<head>
<meta charset="UTF-8">
<title>Register</title>
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