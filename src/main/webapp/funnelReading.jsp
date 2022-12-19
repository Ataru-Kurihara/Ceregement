<%@ page import="com.model.hall.HallDAO"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="com.model.hall.Hall"%>
<%@ page import="com.model.user.UserDAO"%>
<%@ page import="com.model.user.User"%>
<%@ page import="com.model.organizer.OrganizerDAO"%>
<%@ page import="javax.mail.Session"%>
<%@ page import="com.model.organizer.Organizer"%>
<%@ page import="java.util.Objects"%><%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/12/03
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
	String id = session.getAttribute("id").toString();
	String regnumber = session.getAttribute("regnumber").toString();
	String deadname = HallDAO.getData(id).get(0);
	String deathday = HallDAO.getData(id).get(1);
	String hallname = HallDAO.getData(id).get(2);
	String address = HallDAO.getData(id).get(3);
	String funeralday = HallDAO.getData(id).get(4);
	String organizerPostalCode = OrganizerDAO.getData(id).get(0);
	String organizerName = OrganizerDAO.getData(id).get(1);
	String organizerAddress = OrganizerDAO.getData(id).get(2);
	String organizerTel = OrganizerDAO.getData(id).get(3);
	session.setAttribute("deadname", deadname);
	session.setAttribute("deathday", deathday);
	session.setAttribute("address", address);
	session.setAttribute("hallname", hallname);
	session.setAttribute("funeralday", funeralday);
	session.setAttribute("organizerPostalCode", organizerPostalCode);
	session.setAttribute("organizerName", organizerName);
	session.setAttribute("organizerAddress", organizerAddress);
	session.setAttribute("organizerTel", organizerTel);
	session.setAttribute("id", id);
	session.setAttribute("regnumber", regnumber);
%>
<html>
<head>
	<style>
		body {
			background: linear-gradient(white, mediumpurple);
			background-size: cover;
			font-family: sans-serif;
			text-align: center;
		}

		h2 {
			border: 2px #808080 solid;
		}

		button {
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

		button:hover {
			-webkit-box-shadow: -10px -4px 0 #000;
			box-shadow: -10px -4px 0 #000;
		}

		a {
			font-size: 250%;
		}
		p{
			border: 2px red solid;
			font-weight: bold;
			font-size: 300%;
			color: red;
		}
	</style>
	<title>funnelReading</title>
</head>
<body>

<h2>故人氏名</h2>
<p1><%=deadname%></p1>
<h2>命日</h2>
<p1><%=deathday%></p1>
<h2>葬儀会場名</h2>
<p1><%=hallname%></p1>
<h2>葬儀会場住所</h2>
<p1><%=address%></p1>
<h2>葬儀の日時</h2>
<p1><%=funeralday%>より</p1>
<h2>喪主氏名</h2>
<p1><%=organizerName%></p1>
<h2>住所</h2>
<p1>〒<%=organizerPostalCode%>></p1>
<br>
<p1><%=organizerAddress%></p1>
<h2>電話番号</h2>
<p1><%=organizerTel%></p1>
<br>
<button type="button" name="back">
	<%
		if (Objects.equals(regnumber, "0")) {
	%>
				<a href="OrganizerSelection">戻る</a>
	<%
	} else {
	%>
				<a href="ParticipantSelection">戻る</a>
	<%
		}
	%>

</button>
</body>
</html>

