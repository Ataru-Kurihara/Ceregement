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
<title>funnelRegistered</title>
</head>
<body>
	<h1>葬儀情報が正常に登録されました！</h1>
	<p1>招待者の方に以下のURLを送ってください。</p1>
	<a
		href="http://localhost:8080/Ceregement/EmailRegister?regNumber=1&ceregementId=
		<%=session.getAttribute("id")%>">http://localhost:8080/Ceregement/EmailRegister?regNumber=1&ceregementId=
		<%=session.getAttribute("id")%></a>

	<button type="button" name="menu">
		<a href="OrganizerSelection">メニューへ</a>
	</button>
</body>
</html>
